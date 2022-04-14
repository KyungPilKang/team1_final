package com.finalproject.service;

import com.finalproject.dto.Member;

public interface MemberService {
	public void insertNaverMember(Member member) throws Exception;
	public void insertKakaoMember(Member member) throws Exception;
	public void insertMember(Member member) throws Exception;
	public void infoUpdateMember(Member member) throws Exception;
	public boolean kakaoCheck(String provider_id) throws Exception;
	public boolean naverCheck(String provider_id) throws Exception;
	public boolean emailCheck(String email) throws Exception;
	public boolean usernameCheck(String username) throws Exception;
	public boolean nicknameCheck(String nickname) throws Exception;
	public String loginCheck(String username, String password) throws Exception;
	public Member selectMemberByUsername(String username) throws Exception;
	public Member selectMemberByProvider_id(String provider_id) throws Exception;
	public boolean passwordCheck(int no, String password) throws Exception;
	public void passwordChange(int no, String password) throws Exception;
	public void createAdmin(Member member)throws Exception;
	public void withdrawMember(Member member)throws Exception;
	public void createTestid(Member member)throws Exception;
	public void createTestid2(Member member)throws Exception;
	public String adminCheck(String password)throws Exception;
}
