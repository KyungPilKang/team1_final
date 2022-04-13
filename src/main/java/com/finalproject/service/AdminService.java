package com.finalproject.service;

import java.util.List;

import com.finalproject.dto.Answer;
import com.finalproject.dto.Member;
import com.finalproject.dto.Order;
import com.finalproject.dto.OrderBook;
import com.finalproject.dto.Request;


public interface AdminService {
	
	
	List<Request> getRequestListByRole(String role) throws Exception;
	List<Answer> getAnswerListByRole(String role) throws Exception;
	
	
	List<Member> getWithdrawListS() throws Exception;
	
	List<Order> getOrderListByState(String order_state) throws Exception;
	
	Order getOrderInfoByNum(String orderNum) throws Exception;

	void insertAnsCont(Answer ansCont) throws Exception;
	Request getRequestInfoByNum(int requestNum) throws Exception;
	Answer getAnswerInfoByNum(int requestNum) throws Exception;
	
	
//	void inputQna(Answer ans) throws Exception;
//	List<Request> getRequestListByRole(String role);	
	
	
}
