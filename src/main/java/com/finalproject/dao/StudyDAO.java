package com.finalproject.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import com.finalproject.dto.Study;

@Mapper
@Repository
public interface StudyDAO {
	//1.스터디 등록
	public void regStudy(Study study) throws Exception;
	public void updateStudy(Study study) throws Exception;
	public void removeStudy(int study_no) throws Exception;
	public List<Study> regstudylist(Study study) throws Exception;
	public List<Study> searchStudyByStatus(Map<String,String> studybystatus) throws Exception; 
}

