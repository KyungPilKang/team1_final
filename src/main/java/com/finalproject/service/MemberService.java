package com.finalproject.service;



import com.finalproject.dto.Member;

public interface MemberService {
	
	public void insertMember(Member member) throws Exception;
	public boolean emailCheck(String email) throws Exception;
	public boolean usernameCheck(String username) throws Exception;
	public boolean nicknameCheck(String nickname) throws Exception;
}
