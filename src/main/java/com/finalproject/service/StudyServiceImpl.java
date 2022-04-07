package com.finalproject.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.finalproject.dao.StudyDAO;
import com.finalproject.dao.StudyTeamDAO;
import com.finalproject.dto.Study;
import com.finalproject.dto.StudyTeam;

@Service
public class StudyServiceImpl implements StudyService {
	@Autowired 
	StudyDAO studyDAO;
	
	/*
	 * @Autowired StudyTeamDAO studyteamDAO;
	 */
	
	@Override
	public void regStudy(Study study) throws Exception {
		//스터디 등록
		studyDAO.regStudy(study);
		
	}

	@Override
	public void updateStudy(Study study) throws Exception {
		System.out.println("수정확인후 수정 cnf2 :" + study.toString());
		//스터디 수정 
		studyDAO.updateStudy(study);
		
	}

	@Override
	public void removeStudy(int study_no) throws Exception {
		//스터디 삭제
		studyDAO.removeStudy(study_no);	
	}


	@Override
	public List<Study> makerList(String maker) throws Exception {
		// 내가 쓴 글 :  스터디 게시글 리스트 반환(개설자)
		//int listCount = studyDAO.makerListCount(maker);	
		return studyDAO.makerList(maker);
	}
	
	@Override
	public Study getStudydetail(int study_no) throws Exception {
		//하나의 게시글정보 가져오기
		return studyDAO.getStudydetail(study_no);
	}
	
	@Override
	public List<Study> searchStudyByStatus(String user_id, String status) throws Exception {
	    //옵션 선택 값에 따른 일반유저 게시물 반환 (studyclass 등교하기 페이지) 
		Map<String, String> studybystatus = new HashMap<String, String>();
	    studybystatus.put("user_id", user_id);
	    studybystatus.put("status", status);
		
	    System.out.println(studybystatus.get("user_id"));
	    System.out.println(studybystatus.get("status"));
	    
		return studyDAO.searchStudyByStatus(studybystatus);
	}
	
	@Override
	public void changeAttend(String user_id, int study_no, String status) throws Exception {
		// 참여, 참여취소
		Map<String, Object> map = new HashMap<>();
		map.put("user_id", user_id);
		map.put("study_no", study_no);
		if (status == "team_apply") {
			map.put("status", status);
			studyDAO.checkAttend(map);
		} else {
			studyDAO.cancelAttend(map);
		}
	}

	@Override
	public List<StudyTeam> attendInfo(int study_no) throws Exception {
		//
		return null;
	}

	@Override
	public void makeAttend(int study_no, String user_id) throws Exception {
		//  참여수락
		studyDAO.makeAttend(study_no, user_id);
	}

	@Override
	public void holdAttend(int study_no, String user_id) throws Exception {
		// 참여수락 취소 
		studyDAO.holdAttend(study_no, user_id);
	}
	
	@Override
	public void rejectAttend(int study_no, String user_id) throws Exception {
		// 참여 탈락
		studyDAO.rejectAttend(study_no, user_id);
	}

	@Override
	public List<StudyTeam> getStudentList(int study_no) throws Exception {
		//참여자정보리스트 가져오기 
		return studyDAO.getStudentList(study_no);
	}



}
