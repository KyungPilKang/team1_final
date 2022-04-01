package com.finalproject.service;

import java.util.List;

import com.finalproject.dto.Study;
import com.finalproject.dto.StudyTeam;

public class StudyServiceImpl implements StudyService {

	@Override
	public void regstudy(Study inputstud) throws Exception {
		//1.스터디 등록
		
	}

	@Override
	public void updateStudy(int study_no) throws Exception {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void removeStudy(int study_no) throws Exception {
		// TODO Auto-generated method stub
		
	}

	@Override
	public List<Study> searchStudy(String study_sname, String study_grade, String study_subject, String study_type,
			String study_target_level) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void attendCheck(int study_no) throws Exception {
		// TODO Auto-generated method stub
		
	}

	@Override
	public List<StudyTeam> attendInfo(int study_no) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void makeAttend(int study_no, String user_id) throws Exception {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void deleteAttend(int study_no, String user_id) throws Exception {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void holdAttend(int study_no, String user_id) throws Exception {
		// TODO Auto-generated method stub
		
	}

	@Override
	public List<Study> studymakerList(String id) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Study> searchStudyByStatus(String user_id, String status) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

}
