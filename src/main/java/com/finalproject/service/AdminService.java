package com.finalproject.service;

import java.util.List;

import com.finalproject.dto.Answer;
import com.finalproject.dto.Request;


public interface AdminService {
	
	
	List<Request> getRequestList() throws Exception;
	List<Answer> getAnswerList() throws Exception;
	void inputQna(Answer ans) throws Exception;
	
	
}
