package com.finalproject.dto;

public class StudyTeam {
	public int studyteam_no; 
	private String team_status;
	private String user_id;
	private int study_no;

	public StudyTeam() {}

	
	public StudyTeam(int studyteam_no, String team_status, String user_id, int study_no) {
		super();
		this.studyteam_no = studyteam_no;
		this.team_status = team_status;
		this.user_id = user_id;
		this.study_no = study_no;
	}


	@Override
	public String toString() {
		return "StudyTeam [studyteam_no=" + studyteam_no + ", team_status=" + team_status + ", user_id=" + user_id
				+ ", study_no=" + study_no + "]";
	}


	public int getStudyteam_no() {
		return studyteam_no;
	}

	public void setStudyteam_no(int studyteam_no) {
		this.studyteam_no = studyteam_no;
	}

	public String getTeam_status() {
		return team_status;
	}

	public void setTeam_status(String team_status) {
		this.team_status = team_status;
	}

	public String getUser_id() {
		return user_id;
	}

	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}

	public int getStudy_no() {
		return study_no;
	}

	public void setStudy_no(int study_no) {
		this.study_no = study_no;
	}



}
