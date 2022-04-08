package com.finalproject.dao;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import com.finalproject.dto.CustomUserDetails;
import com.finalproject.dto.Member;

@Mapper
@Repository
public interface MemberDAO {
	public void insertNaverMember(Member member) throws Exception;
	public void insertKakaoMember(Member member) throws Exception;
	public void insertMember(Member member) throws Exception;
	public Member selectMemberByProvider_id(String provider_id) throws Exception;
	public Member selectMemberByEmail(String email) throws Exception;
	public Member selectMemberByNo(int no) throws Exception;
	public Member selectMemberByUsername(String username) throws Exception;
	public Member selectMemberByNickname(String nickname) throws Exception;
	public void update_login_count(Member member);
	public void modifyMember(Member member);
	public Member findByUsernameAndPassword(String username, String Password)throws Exception;

}
