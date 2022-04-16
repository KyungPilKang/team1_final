package com.finalproject.service;

import java.time.LocalDate;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import com.finalproject.api.kakao.KakaoInfo;
import com.finalproject.dao.MemberDAO;
import com.finalproject.dto.Member;

@Service
public class MemberServiceImpl implements MemberService {

	@Autowired
	MemberDAO memberDAO;
	
	@Autowired
	private BCryptPasswordEncoder bCryptPasswordEncoder;
	
	@Override
	public void insertNaverMember(Member member) throws Exception {
		String str=member.getBirth();
		String[] birth = str.split("-");
		int year = Integer.parseInt(birth[0]);
		int age2 = 2022 - year;
		String age = Integer.toString(age2);
	
		member.setAge(age);
		member.setLogin_count(0);
		member.setProvider("NAVER");
		member.setRole("ROLE_USER");
		memberDAO.insertNaverMember(member);
	}
	

	@Override
	public void insertKakaoMember(Member member) throws Exception {
		//date를 통하여 나이 추출 
				String str=member.getBirth();
				String[] birth = str.split("-");
				int year = Integer.parseInt(birth[0]);
				int age2 = 2022 - year;
				String age = Integer.toString(age2);
				
				member.setAge(age);
				member.setLogin_count(0);
				member.setProvider("KAKAO");
				member.setRole("ROLE_USER");
				memberDAO.insertKakaoMember(member);
		
	}

	@Override
	public void createAdmin(Member member) throws Exception {
		String  encodedPassword = bCryptPasswordEncoder.encode("admin");
		member.setUsername("admin");
		member.setPassword(encodedPassword);
		member.setRole("ROLE_ADMIN");
		member.setName("관리자");
		memberDAO.insertMember(member);
	}

	
	@Override
	public void insertMember(Member member) throws Exception {
		//date를 통하여 나이 추출 
		String str=member.getBirth();
		String[] birth = str.split("-");
		int year = Integer.parseInt(birth[0]);
		int age2 = 2022 - year;
		String age = Integer.toString(age2);
		String encodedPassword = bCryptPasswordEncoder.encode(member.getPassword());
		member.setPassword(encodedPassword);
		member.setAge(age);
		member.setLogin_count(0);
		member.setRole("ROLE_USER");
		memberDAO.insertMember(member);
	}
	
	@Override
	public void infoUpdateMember(Member member) throws Exception {
		
		System.out.println(member.getNo());
		memberDAO.modifyMember(member);
		
	}
	
	@Override
	public String adminCheck(String password)throws Exception{
		Member check = memberDAO.selectMemberByUsername("admin");
		if(bCryptPasswordEncoder.matches(password, check.getPassword())){
			return "admin";
		}
		return "passfail";
	}
	
	@Override
	public String loginCheck(String username, String password) throws Exception {
		String res = "";
		Member loginCheck=memberDAO.selectMemberByUsername(username);

		if(loginCheck==null) {
			res = "idfail";
			return res;
		}
		
		if (bCryptPasswordEncoder.matches(password, loginCheck.getPassword())) {
			
				loginCheck.setLogin_count(0);
				memberDAO.update_login_count(loginCheck);
				res = "ok";
			
		} else {
			loginCheck.setLogin_count(loginCheck.getLogin_count());
			if(loginCheck.getLogin_count()>2) {
				res="overfail";
			}else {
				loginCheck.setLogin_count(loginCheck.getLogin_count()+1);
				memberDAO.update_login_count(loginCheck);
				res="passfail";}
			
			}
		return res;		
	}
	@Override
	public boolean passwordCheck(int no, String password) throws Exception {
		
		Member check = memberDAO.selectMemberByNo(no);
		System.out.println(check.getPassword());
		System.out.println(password);
		System.out.println(bCryptPasswordEncoder.matches(password, check.getPassword()));
		if (bCryptPasswordEncoder.matches(password, check.getPassword())) {
			
			return true;
		}
		return false;
	}
	
	
	@Override
	public void passwordChange(int no, String password) throws Exception {
		Member pass = memberDAO.selectMemberByNo(no);
		String encodedPassword = bCryptPasswordEncoder.encode(password);
		pass.setPassword(encodedPassword);
		memberDAO.update_password(pass);
	}

	@Override
	public boolean emailCheck(String email) throws Exception {
		Member emailChk  = memberDAO.selectMemberByEmail(email);
		if(emailChk!=null) {
			return true;
		}
		return false;
	}

	@Override
	public boolean usernameCheck(String username) throws Exception {
		Member usernameChk  = memberDAO.selectMemberByUsername(username);
		if(usernameChk!=null) {
			return true;
		}
		return false;
	}
	


	@Override
	public boolean nicknameCheck(String nickname) throws Exception {
		Member nicknameChk = memberDAO.selectMemberByNickname(nickname);
		if(nicknameChk!=null) {
			return true;
		}
		return false;
	}

	@Override
	public boolean kakaoCheck(String provider_id) throws Exception {
		Member kakaoCheck = memberDAO.selectMemberByProvider_id(provider_id);
		if(kakaoCheck!=null) {
			return false;
		}
		return true;
	}
	
	@Override
	public boolean naverCheck(String provider_id) throws Exception {
		Member naverCheck = memberDAO.selectMemberByProvider_id(provider_id);
		
		if(naverCheck!=null) {
			return false;
		}
		return true;
	}


	@Override
	public Member selectMemberByUsername(String username) throws Exception {
		Member member = memberDAO.selectMemberByUsername(username);
		
		return member;
	}


	@Override
	public void withdrawMember(Member member) throws Exception {
		Member check = memberDAO.selectMemberByNo(member.getNo());
		check.setUsername(null);
		check.setPassword(null);
		check.setName(null);
		check.setNickname(null);
		check.setEmail(null);
		check.setPhone(null);
		check.setZipcode(null);
		check.setDoro_juso(null);
		check.setProvider(null);
		check.setProvider_id(null);
		check.setWithdraw_status("Y");
		check.setWithdraw_type(member.getWithdraw_type());
		check.setWithdraw_contents(member.getWithdraw_contents());
		check.setWithdraw_date(String.valueOf(LocalDate.now()));
		memberDAO.withdrawMember(check);
	}


	@Override
	public void createTestid(Member member) throws Exception {
				String encodedPassword = bCryptPasswordEncoder.encode("1234");
				member.setPassword(encodedPassword);
				member.setUsername("test");
				member.setEmail("aaa@bbb");
				member.setName("아무개");
				member.setNickname("12354");
				member.setBirth("2000-01-01");
				member.setAge("22");
				member.setPhone("01012341111");
				member.setRole("ROLE_USER");
				memberDAO.insertMember(member);
		
	}
	
	@Override
	public void createTestid2(Member member) throws Exception {
				String[] type = new String[5];
				type[0] = "단순변심";
				type[1] = "타 서비스와의 차별성 부족";
				type[2]	= "인터페이스 편의성 부족";	
				type[3]	= "고객응대 불편";	
				type[4]	= "기타";
				int r=(int)((Math.random()*1000)%5);
				String encodedPassword = bCryptPasswordEncoder.encode("1234");
				member.setPassword(encodedPassword);
				member.setWithdraw_status("Y");
				member.setWithdraw_type(type[r]);
				member.setWithdraw_date("2021-04-11");
				memberDAO.insertMember(member);
		
	}


	@Override
	public Member selectMemberByProvider_id(String provider_id) throws Exception {
Member member = memberDAO.selectMemberByProvider_id(provider_id);
		
		return member;
	}

}
