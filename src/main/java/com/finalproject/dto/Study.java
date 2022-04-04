package com.finalproject.dto;

import java.sql.Timestamp;

public class Study {
	public int study_no; 
	private String maker; 
	private String study_sname; 
	private String study_grade; 
	private String study_subject; 
	private String study_type; 
	private String study_target_level; 
	private String study_title;
	private String study_fdate;
	private String study_edate;
	private String study_ftime;
	private String study_etime;
	private String study_contents; 
	private String study_kakao;
	private String study_regdate;
	
	public Study() {}

//	public Study(int study_no, String maker, String study_sname, String study_grade, String study_subject,
//			String study_type, String study_target_level, String study_title, String study_fdate, String study_edate,
//			String study_ftime, String study_etime, String study_contents, String study_kakao, String study_regdate) {
//		super();
//		this.study_no = study_no;
//		this.maker = maker;
//		this.study_sname = study_sname;
//		this.study_grade = study_grade;
//		this.study_subject = study_subject;
//		this.study_type = study_type;
//		this.study_target_level = study_target_level;
//		this.study_title = study_title;
//		this.study_fdate = study_fdate;
//		this.study_edate = study_edate;
//		this.study_ftime = study_ftime;
//		this.study_etime = study_etime;
//		this.study_contents = study_contents;
//		this.study_kakao = study_kakao;
//		this.study_regdate = study_regdate;
//	}

	public int getStudy_no() {
		return study_no;
	}

	public void setStudy_no(int study_no) {
		this.study_no = study_no;
	}

	public String getMaker() {
		return maker;
	}

	public void setMaker(String maker) {
		this.maker = maker;
	}

	public String getStudy_sname() {
		return study_sname;
	}

	public void setStudy_sname(String study_sname) {
		this.study_sname = study_sname;
	}

	public String getStudy_grade() {
		return study_grade;
	}

	public void setStudy_grade(String study_grade) {
		this.study_grade = study_grade;
	}

	public String getStudy_subject() {
		return study_subject;
	}

	public void setStudy_subject(String study_subject) {
		this.study_subject = study_subject;
	}

	public String getStudy_type() {
		return study_type;
	}

	public void setStudy_type(String study_type) {
		this.study_type = study_type;
	}

	public String getStudy_target_level() {
		return study_target_level;
	}

	public void setStudy_target_level(String study_target_level) {
		this.study_target_level = study_target_level;
	}

	public String getStudy_title() {
		return study_title;
	}

	public void setStudy_title(String study_title) {
		this.study_title = study_title;
	}

	public String getStudy_fdate() {
		return study_fdate;
	}

	public void setStudy_fdate(String study_fdate) {
		this.study_fdate = study_fdate;
	}

	public String getStudy_edate() {
		return study_edate;
	}

	public void setStudy_edate(String study_edate) {
		this.study_edate = study_edate;
	}

	public String getStudy_ftime() {
		return study_ftime;
	}

	public void setStudy_ftime(String study_ftime) {
		this.study_ftime = study_ftime;
	}

	public String getStudy_etime() {
		return study_etime;
	}

	public void setStudy_etime(String study_etime) {
		this.study_etime = study_etime;
	}

	public String getStudy_contents() {
		return study_contents;
	}

	public void setStudy_contents(String study_contents) {
		this.study_contents = study_contents;
	}

	public String getStudy_kakao() {
		return study_kakao;
	}

	public void setStudy_kakao(String study_kakao) {
		this.study_kakao = study_kakao;
	}

	public String getStudy_regdate() {
		return study_regdate;
	}

	public void setStudy_regdate(String study_regdate) {
		this.study_regdate = study_regdate;
	}

	@Override
	public String toString() {
		return "Study [study_no=" + study_no + ", maker=" + maker + ", study_sname=" + study_sname + ", study_grade="
				+ study_grade + ", study_subject=" + study_subject + ", study_type=" + study_type
				+ ", study_target_level=" + study_target_level + ", study_title=" + study_title + ", study_fdate="
				+ study_fdate + ", study_edate=" + study_edate + ", study_ftime=" + study_ftime + ", study_etime="
				+ study_etime + ", study_contents=" + study_contents + ", study_kakao=" + study_kakao
				+ ", study_regdate=" + study_regdate + "]";
	}
	
	
	


}
