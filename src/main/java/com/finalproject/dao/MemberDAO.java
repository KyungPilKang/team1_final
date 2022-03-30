package com.finalproject.dao;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import com.finalproject.dto.Member;

@Mapper
@Repository
public interface MemberDAO {
	
	public Member selectMemberByUsername(String username) throws Exception;
	public void insertMember(Member member) throws Exception;

}
