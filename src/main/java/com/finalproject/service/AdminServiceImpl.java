package com.finalproject.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.finalproject.dao.AdminDAO;
import com.finalproject.dto.Member;
import com.finalproject.dto.Order;

@Service
public class AdminServiceImpl implements AdminService {
	@Autowired
	private AdminDAO adminDAO;
	
		
	
	
	@Override
	public List<Member> getWithdrawListS() throws Exception {
		
		return adminDAO.getWithdrawListS();
	}
	
	
	@Override
	public List<Order> getOrderListByState(String order_state) throws Exception {
		return adminDAO.orderListByState(order_state);
	}
	
	
	@Override
	public Order getOrderInfoByNum(String order_num) throws Exception {
		return adminDAO.orderInfoByNum(order_num);
	}

	
	@Override
	public void updateOrderState(Order order) throws Exception {
		adminDAO.updateOrder(order);
	}

	

	
//	@Override
//	public void insertAnsCont(Answer ansCont) throws Exception {
//		adminDAO.insertAnswerCont(ansCont);
//	}
	
	
//	@Override
//	public Request getRequestInfoByNum(int requestNum) throws Exception {
//		return adminDAO.getRequestInfoByNum(requestNum);
//	}
	
	
//	@Override
//	public Answer getAnswerInfoByNum(int requestNum) throws Exception {
//		return adminDAO.getAnswerInfoByNum(requestNum);
//	}
	
	
//	@Override
//	public List<Request> getRequestListByRole(String role) throws Exception {
//		return adminDAO.qnaReqList(role);
//	}
	

//	@Override
//	public List<Answer> getAnswerListByRole(String role) throws Exception {
//		return adminDAO.qnaAnsList(role);
//	}

	
//	@Override
//	public void inputQna(Answer ans) throws Exception {
//		adminDAO.insertAnswer(ans);
//	}
	
	
}
