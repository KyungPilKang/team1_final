package com.finalproject.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import com.finalproject.dto.Study;

@Mapper
@Repository
public interface StudyDAO {
	//스터디 등록
	public void regStudy(Study study) throws Exception;
	public void updateStudy(Study study) throws Exception;
	public void removeStudy(int study_no) throws Exception;
	//스터디 신청 상태에 따른 리스트 반환
	List<Study> searchStudyByStatus(Map<String,String> studybystatus) throws Exception;
	//스터디 상세게시글보기(일반) 
	public Study getStudydetail(int study_no) throws Exception;

	//내가 쓴 글 :  스터디 게시글 리스트 반환(개설자)
	//public int makerListCount(String maker);
	List<Study> makerList(String maker);
	
	//참여, 참여취소
	public void checkAttend(Map map, String team_status)throws Exception;
	public void cancleAttend(Map map) throws Exception;
	
	//참여자 추가
	public void makeAttend(int study_no, String user_id) throws Exception;
	//참여자 탈락
	public void rejectAttend(int study_no, String user_id) throws Exception;
	//참여자 추가 취소 (team_apply 로 update) 
	public void holdAttend(int study_no, String user_id) throws Exception;

}

