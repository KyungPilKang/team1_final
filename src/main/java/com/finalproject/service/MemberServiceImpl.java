package com.finalproject.service;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import com.finalproject.dao.MemberDAO;
import com.finalproject.dto.Member;

@Service
public class MemberServiceImpl implements MemberService {

	@Autowired
	MemberDAO memberDAO;
	
	@Autowired
	private BCryptPasswordEncoder bCryptPasswordEncoder;

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
	
	

}
