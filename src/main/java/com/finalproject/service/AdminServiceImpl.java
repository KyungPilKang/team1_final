package com.finalproject.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.finalproject.dao.AdminDAO;
import com.finalproject.dto.Answer;
import com.finalproject.dto.Member;
import com.finalproject.dto.Order;
import com.finalproject.dto.OrderBook;
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
	public List<Member> getWithdrawListS() throws Exception {
		
		return adminDAO.getWithdrawListS();
	}
	
	
	@Override
	public List<Order> getOrderListByState(String order_state) throws Exception {
		return adminDAO.orderList(order_state);
	}
	@Override
	public List<OrderBook> getOrderBookByState(String order_state) throws Exception {
		return adminDAO.orderBook(order_state);
	}
	
	
	@Override
	public Order getOrderInfoByNum(String order_num) throws Exception {
		return adminDAO.orderInfo(order_num);
	}
	@Override
	public OrderBook getOrderBookInfoByNum(String order_num) throws Exception {
		return adminDAO.orderBookInfo(order_num);
	}
	

	@Override
	public void insertAnsCont(Answer ansCont) throws Exception {
		adminDAO.insertAnswerCont(ansCont);
	}
	@Override
	public Request getRequestInfoByNum(int requestNum) throws Exception {
		return adminDAO.getRequestInfoByNum(requestNum);
	}
	@Override
	public Answer getAnswerInfoByNum(int requestNum) throws Exception {
		return adminDAO.getAnswerInfoByNum(requestNum);
	}
	
	
//	@Override
//	public void inputQna(Answer ans) throws Exception {
//		adminDAO.insertAnswer(ans);
//	}
	
}
