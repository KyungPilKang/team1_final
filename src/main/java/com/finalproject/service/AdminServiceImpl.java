package com.finalproject.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.finalproject.dao.AdminDAO;
import com.finalproject.dto.Answer;
import com.finalproject.dto.Request;

@Service
public class AdminServiceImpl implements AdminService {
	@Autowired
	private AdminDAO adminDAO;
	
	
	@Override
	public List<Request> getRequestList() throws Exception {
		return adminDAO.qnaReqList();
	}
	
	@Override
	public List<Answer> getAnswerList() throws Exception {
		return adminDAO.qnaAnsList();
	}
	
	
}
