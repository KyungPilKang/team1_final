package com.finalproject.service;

import java.util.List;

import com.finalproject.dto.Answer;
import com.finalproject.dto.Member;
import com.finalproject.dto.Request;


public interface AdminService {
	
	
	List<Request> getRequestListByRole(String role) throws Exception;
	List<Answer> getAnswerListByRole(String role) throws Exception;
	
	List<Member> getMemberListByRole(String role) throws Exception;
	
	Request getRequestInfoByRole(String role) throws Exception;
	Answer getAnswerInfoByRole(String role) throws Exception;
	
	Request getRequestRegByRole(String role) throws Exception;
	Answer getAnswerRegByRole(String role) throws Exception;
	
//	void inputQna(Answer ans) throws Exception;
//	List<Request> getRequestListByRole(String role);	
	
	
}
