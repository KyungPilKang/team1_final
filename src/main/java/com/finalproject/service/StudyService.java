package com.finalproject.service;

import java.util.List;

import com.finalproject.dto.Member;
import com.finalproject.dto.Study;
import com.finalproject.dto.StudyTeam;
import org.springframework.stereotype.Service;

@Service
public interface StudyService {
	//1.스터디 등록 
	public void regstudy(Study study) throws Exception;
	//2. 스터디 수정 
	public void updateStudy(Study study) throws Exception;
	//3. 스터디 삭제 
	public void removeStudy(int study_no) throws Exception;
	
	
	//3-1. 스터디 조회,검색 
	List<Study> searchStudy(String study_sname, String study_grade, String study_subject, String study_type, String study_target_level) throws Exception;
	//3-2. List <Study> 게시물 조회 반환 리스트

	//4. 참여/미참여 
	public void attendCheck(int study_no) throws Exception;
	
	//5. 참여자조회
	List<StudyTeam> attendInfo(int study_no) throws Exception;
	//6. 참여자 리스트 추가
	public void makeAttend(int study_no, String user_id) throws Exception;
	//7. 참여자 리스트에서 탈락(제거) 
	public void deleteAttend(int study_no, String user_id) throws Exception; 
	//8. 참여자 대기중 리스트 (대기)
	public void holdAttend(int study_no, String user_id) throws Exception;
	//9. 내가쓴글 가지고 오기 (개설자글) 
	public List<Study> studymakerList(String id) throws Exception; 
	
	//team_accept(수락), team_apply(신청), team_reject(탈락) status 리스트
	List<Study> searchStudyByStatus(String user_id, String status) throws Exception; 
	List<Study> regstudylist(Study study) throws Exception;
}
