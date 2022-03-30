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
	public Member selectMemberByUsername(String username) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void insertMember(Member member) throws Exception {
		// TODO Auto-generated method stub
		
	}
	
	

}
