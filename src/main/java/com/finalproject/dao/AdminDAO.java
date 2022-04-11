package com.finalproject.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import com.finalproject.dto.Answer;
import com.finalproject.dto.Member;
import com.finalproject.dto.Request;

@Mapper
@Repository
public interface AdminDAO {
	public List<Request> qnaReqList(String role) throws Exception;
	public List<Answer> qnaAnsList(String role) throws Exception;
	public List<Member> withdrawMemList(String role) throws Exception;
	public Request queryReqInfo(String role) throws Exception;
	public Answer queryAnsInfo(String role) throws Exception;
	
//	public void insertAnswer(Answer ans) throws Exception;
	
	
}
