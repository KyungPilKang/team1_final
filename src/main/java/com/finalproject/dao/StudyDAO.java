package com.finalproject.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.finalproject.dto.Study;
import com.finalproject.dto.StudyTeam;

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
	List<Study> makerList(@Param("startrow") int startrow, @Param("maker") String maker);	
	//참여, 참여취소
	public void checkAttend(Map map)throws Exception;
	public void cancelAttend(Map map) throws Exception;
	//참여자정보리스트 가져오기 
	List<StudyTeam> selectStudentApplyList(int study_no) throws Exception;
	
	
	//참여자 accept, reject 
	public void changeApplyAceept(Map map) throws Exception;
	
	//검색정보 
	public List<Study> serchListAll(Study study) throws Exception;
	
	//개설자가 개설했는지 여부 
	public int makerReturn(String maker) throws Exception;
	
	//조회(페이지 기능)
	int selectStudyCount() throws Exception;
	List<Study> selectStudyList(@Param("startrow") int startrow, @Param("cond") Study study) throws Exception;

	int getTypeCount(String study_type) throws Exception;

}

