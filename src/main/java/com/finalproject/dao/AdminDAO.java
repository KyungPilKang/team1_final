package com.finalproject.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import com.finalproject.dto.Member;
import com.finalproject.dto.Order;

@Mapper
@Repository
public interface AdminDAO {

	
	
	
	public List<Member> getWithdrawListS() throws Exception;
	
	public List<Order> orderListByState(String order_state) throws Exception;
	
	public Order orderInfoByNum(String order_num) throws Exception;
	
	public void updateOrder(Order order) throws Exception;
	
	
	
	
//	public List<Member> getWithdrawListT() throws Exception;
	
//	public Request getRequestInfoByNum(int requestNum) throws Exception;
//	public Answer getAnswerInfoByNum(int requestNum) throws Exception;
	
//	public List<Request> qnaReqList(String role) throws Exception;
//	public List<Answer> qnaAnsList(String role) throws Exception;
	
//	public void insertAnswer(Answer ans) throws Exception;
	
	
}
