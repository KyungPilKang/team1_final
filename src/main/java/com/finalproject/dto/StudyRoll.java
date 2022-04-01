package com.finalproject.dto;

public class StudyRoll {
	public int study_no;
	private String roll_attend; 
	private String roll_date; 
	private String roll_book;
	
	public StudyRoll() {}
	
	public StudyRoll(int study_no, String roll_attend, String roll_date, String roll_book) {
		super();
		this.study_no = study_no;
		this.roll_attend = roll_attend;
		this.roll_date = roll_date;
		this.roll_book = roll_book;
	}
	
	public int getStudy_no() {
		return study_no;
	}
	public void setStudy_no(int study_no) {
		this.study_no = study_no;
	}
	public String getRoll_attend() {
		return roll_attend;
	}
	public void setRoll_attend(String roll_attend) {
		this.roll_attend = roll_attend;
	}
	public String getRoll_date() {
		return roll_date;
	}
	public void setRoll_date(String roll_date) {
		this.roll_date = roll_date;
	}
	public String getRoll_book() {
		return roll_book;
	}
	public void setRoll_book(String roll_book) {
		this.roll_book = roll_book;
	}


}
