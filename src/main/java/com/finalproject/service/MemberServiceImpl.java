package com.finalproject.service;

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
				memberDAO.insertKakaoMember(member);
		
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
		memberDAO.insertMember(member);
	}
	
	@Override
	public void infoUpdateMember(Member member) throws Exception {
		Member updatemember = memberDAO.selectMemberByNo(member.getNo());
		memberDAO.modifyMember(updatemember);
		
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
			if(loginCheck.getLogin_count()>3) {
				res="overfail";
			}else {res="passfail";}
			}
		return res;
	
		
		
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






	
	

}
