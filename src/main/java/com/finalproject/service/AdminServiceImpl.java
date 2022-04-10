package com.finalproject.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.finalproject.dao.AdminDAO;
import com.finalproject.dto.Answer;
import com.finalproject.dto.Member;
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
	
	@Override
	public List<Member> getMemberListByRole(String role) throws Exception {
		return adminDAO.withdrawMemList(role);
	}
	
	@Override
	public Request getRequestInfoByRole(String role) throws Exception {
		Request reqInfo=adminDAO.queryReqInfo(role);
		if(reqInfo==null) throw new Exception("오류");
		return reqInfo;
	}
	
	@Override
	public Answer getAnswerInfoByRole(String role) throws Exception {
		Answer ansInfo=adminDAO.queryAnsInfo(role);
		if(ansInfo==null) throw new Exception("오류");
		return ansInfo;
	}
	
//	@Override
//	public void inputQna(Answer ans) throws Exception {
//		adminDAO.insertAnswer(ans);
//	}
	
}
