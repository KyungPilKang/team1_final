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
	public List<Request> getRequestListByRole(String role) throws Exception {
		return adminDAO.qnaReqList(role);
	}
		
	@Override
	public List<Answer> getAnswerListByRole(String role) throws Exception {
		return adminDAO.qnaAnsList(role);
	}
	
//	@Override
//	public void inputQna(Answer ans) throws Exception {
//		adminDAO.insertAnswer(ans);
//	}
	
}
