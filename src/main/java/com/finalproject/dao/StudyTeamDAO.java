package com.finalproject.dao;

import java.util.Map;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;


@Mapper
@Repository
public interface StudyTeamDAO {
	//참여 참여취소 
	public void checkAttend(Map<String,String> attendbyCheck, String status1)throws Exception;
	public void cancleAttend(Map<String,String> canclebyCheck) throws Exception;
	
}
