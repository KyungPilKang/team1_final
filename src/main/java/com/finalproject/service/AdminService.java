package com.finalproject.service;

import java.util.List;

import com.finalproject.dto.Member;
import com.finalproject.dto.Order;



public interface AdminService {
	
	
	
	
	List<Member> getWithdrawListS() throws Exception; // 탈퇴회원 리스트 관리 
	
	List<Order> getOrderListByState(String order_state) throws Exception; // 결제완료 리스트 관리
	
	Order getOrderInfoByNum(String order_num) throws Exception; // admin_deliveryInfoForm 배송정보 폼
	
	void updateOrderState(Order order) throws Exception; // ajax 배송상태 업데이트
	

	
	
//	void insertAnsCont(Answer ansCont) throws Exception;
	
//	Request getRequestInfoByNum(int requestNum) throws Exception;
//	Answer getAnswerInfoByNum(int requestNum) throws Exception;
	
//	List<Request> getRequestListByRole(String role) throws Exception;
//	List<Answer> getAnswerListByRole(String role) throws Exception;
	
//	void inputQna(Answer ans) throws Exception;
	
//	List<Request> getRequestListByRole(String role);	
	
	
}
