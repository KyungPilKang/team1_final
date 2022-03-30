package com.finalproject.service;

import org.springframework.stereotype.Service;

import com.finalproject.dto.Member;

public interface MemberService {
	
	public Member selectMemberByUsername(String username) throws Exception;
	public void insertMember(Member member) throws Exception;

}
