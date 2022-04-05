package com.finalproject.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.finalproject.dao.AdminDAO;

@Service
public class AdminServiceImpl implements AdminService {
	@Autowired
	AdminDAO adminDAO;
	
	
	
//	@Override
//	public List<Qnainfo> getQnaInfoList() throws Exception {
//		return adminDAO.qnaInfoList();
//	}
	
	

}
