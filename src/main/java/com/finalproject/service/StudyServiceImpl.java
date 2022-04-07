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
	
	@Autowired 
	StudyTeamDAO studyteamDAO;
	
	
	@Override
	public void regStudy(Study study) throws Exception {
		//스터디 등록
		studyDAO.regStudy(study);
		
	}

	@Override
	public void updateStudy(Study study) throws Exception {
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
	    Map<String, String> studybystatus = new HashMap<String, String>();
	    studybystatus.put("user_id", user_id);
	    studybystatus.put("status", status);
		
	    System.out.println(studybystatus.get("user_id"));
	    System.out.println(studybystatus.get("status"));
	    
		return studyDAO.searchStudyByStatus(studybystatus);
	}
	
	@Override
	public void checkAttend(String user_id, int study_no, String status1) throws Exception {
		// 참여
		Map<String,Object> map = new HashMap<>();
		map.put("user_id", user_id);
		map.put("study_no", study_no);
		String team_status = status1;
		//if(team_status==null||study_no==study.get_study_no&&!user_id.equals(ptp.getUser_id())) return false;
		//return studyDAO.checkAttend(user_id, study_no, team_status);
	}

	@Override
	public void cancleAttend(String user_id, int study_no) throws Exception {
		// 참여취소
		Map<String,Object> map = new HashMap<>();
		map.put("user_id", user_id);
		map.put("study_no", study_no);
		studyDAO.cancleAttend(map);
	}
	


	@Override
	public List<StudyTeam> attendInfo(int study_no) throws Exception {
		//
		return null;
	}

	@Override
	public void makeAttend(int study_no, String user_id) throws Exception {
		//  참여수락
		
	}

	@Override
	public void holdAttend(int study_no, String user_id) throws Exception {
		// 참여수락 취소 
		
	}
	
	@Override
	public void rejectAttend(int study_no, String user_id) throws Exception {
		// 참여 탈락
		
	}


}
