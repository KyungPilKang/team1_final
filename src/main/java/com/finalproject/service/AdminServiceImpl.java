//package com.finalproject.service;
//
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.stereotype.Service;
//
//import com.finalproject.dao.AdminDAO;
//
//@Service
//public class AdminServiceImpl implements AdminService {
//	@Autowired
//	private AdminDAO adminDAO;
//	
//	
//	@Override
//	public List<Request> getRequestList() throws Exception {
//		return adminDAO.qnaReqList();
//	}
//		
//	@Override
//	public List<Answer> getAnswerList() throws Exception {
//		return adminDAO.qnaAnsList();
//	}
//	
//	@Override
//	public void inputQna(Answer ans) throws Exception {
//		adminDAO.insertAnswer(ans);
//	}
//	
//}
