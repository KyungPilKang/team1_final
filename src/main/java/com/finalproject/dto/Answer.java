package com.finalproject.dto;

import java.sql.Date;

public class Answer {
    private int answer_num;
    private int request_num;
    private String answer_content;
    private Date answer_date;
    private String role;
    private String answer_state;
    
    public Answer() {};

    public int getAnswer_num() {
        return answer_num;
    }

    public void setAnswer_num(int answer_num) {
        this.answer_num = answer_num;
    }

    public int getRequest_num() {
        return request_num;
    }

    public void setRequest_num(int request_num) {
        this.request_num = request_num;
    }

    public String getAnswer_content() {
        return answer_content;
    }

    public void setAnswer_content(String answer_content) {
        this.answer_content = answer_content;
    }

    public Date getAnswer_date() {
        return answer_date;
    }

    public void setAnswer_date(Date answer_date) {
        this.answer_date = answer_date;
    }
    
	public String getRole() {
		return role;
	}

	public void setRole(String role) {
		this.role = role;
	}
	
	public String getAnswer_state() {
	    return answer_state;
	}

	public void setAnswer_state(String answer_state) {
	    this.answer_state = answer_state;
	}	
	
}
