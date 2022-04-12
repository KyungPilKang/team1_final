package com.finalproject.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import com.finalproject.dto.Answer;
import com.finalproject.dto.Member;
import com.finalproject.dto.Order;
import com.finalproject.dto.OrderBook;
import com.finalproject.dto.Request;

@Mapper
@Repository
public interface AdminDAO {
	public List<Request> qnaReqList(String role) throws Exception;
	public List<Answer> qnaAnsList(String role) throws Exception;
	
	public List<Member> getWithdrawListT() throws Exception;
	public List<Member> getWithdrawListS() throws Exception;
	
	public List<Order> orderList(String order_state) throws Exception;
	public List<OrderBook> orderBook(String order_state) throws Exception;
	
	public Order orderInfo(String order_num) throws Exception;
	public OrderBook orderBookInfo(String order_num) throws Exception;
	
	public void insertAnswerCont(Answer ansCont) throws Exception;
	public Request getRequestInfoByNum(int requestNum) throws Exception;
	public Answer getAnswerInfoByNum(int requestNum) throws Exception;
	
//	public void insertAnswer(Answer ans) throws Exception;
	
	
}
