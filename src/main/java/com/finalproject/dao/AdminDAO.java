package com.finalproject.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import com.finalproject.dto.Answer;
import com.finalproject.dto.Request;

@Mapper
@Repository("adminDAO")
public interface AdminDAO {
	
	
	public List<Request> qnaReqList() throws Exception;
	public List<Answer> qnaAnsList() throws Exception;
	
	
}
