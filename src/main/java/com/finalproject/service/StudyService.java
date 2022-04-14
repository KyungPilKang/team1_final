package com.finalproject.service;

import java.util.List;

import com.finalproject.dto.PageInfo;
import com.finalproject.dto.Study;
import com.finalproject.dto.StudyTeam;


public interface StudyService {
	//스터디 등록 
	public void regStudy(Study study) throws Exception;
	//스터디 수정 
	public void updateStudy(Study study) throws Exception;
	//스터디 삭제 
	public void removeStudy(int study_no) throws Exception;
	//일반사용자 게시글 가져오기 
	public Study getStudydetail(int study_no) throws Exception;
	//team_accept(수락), team_apply(신청), team_reject(탈락) status 리스트 반환
	List<Study> searchStudyByStatus(String user_id, String status) throws Exception; 
	//내가 쓴 글
	List<Study> makerList(int page, PageInfo pageInfo, String maker) throws Exception;
	//참여 참여취소 
	public void changeAttend(String user_id, int study_no, String status) throws Exception;
	//참여자정보리스트 가져오기 
	List<StudyTeam> getStudentApplyList(int study_no) throws Exception;
	
	
	//step1 할일
	//참여자 추가
	public void changeApplyAceept(int study_no, String student_name, String team_status ) throws Exception;
	//참여자 추가 제거
	//public void rejectAttend(int study_no, String user_id) throws Exception;
	
	//참여자조회
	List<StudyTeam> attendInfo(int study_no) throws Exception;
	
	//검색 
	List<Study> findInfoAll(int page, PageInfo pageInfo, Study study) throws Exception;
	
	//개설자 존재 여부
	public String makerReturn(String maker) throws Exception;
	
	//step2 할일
	//3-1. 스터디 조회,검색 
	//List<Study> searchStudy(String study_sname, String study_grade, String study_subject, String study_type, String study_target_level) throws Exception;
	//3-2. List <Study> 게시물 조회 반환 리스트

	//스터디 상세게시글리스트 반환(개설자)
	//List<Study> studymakerList(String maker) throws Exception;

	public int getTypeCount(String study_type) throws Exception;

}
