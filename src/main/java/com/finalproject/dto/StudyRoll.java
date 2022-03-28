package com.finalproject.dto;

public class StudyRoll {
	public int study_no; 
	private String team_apply;
	private String team_accept;
	private String team_reject;

	public StudyRoll() {}

	public StudyRoll(int study_no, String team_apply, String team_accept, String team_reject) {
		super();
		this.study_no = study_no;
		this.team_apply = team_apply;
		this.team_accept = team_accept;
		this.team_reject = team_reject;
	}

	public int getStudy_no() {
		return study_no;
	}

	public void setStudy_no(int study_no) {
		this.study_no = study_no;
	}

	public String getTeam_apply() {
		return team_apply;
	}

	public void setTeam_apply(String team_apply) {
		this.team_apply = team_apply;
	}

	public String getTeam_accept() {
		return team_accept;
	}

	public void setTeam_accept(String team_accept) {
		this.team_accept = team_accept;
	}

	public String getTeam_reject() {
		return team_reject;
	}

	public void setTeam_reject(String team_reject) {
		this.team_reject = team_reject;
	}
	
	

}
