package com.finalproject.dto;

import java.sql.Date;

public class Answer {
    int answer_num;
    int request_num;
    String answer_subject;
    String answer_content;
    Date answer_date;

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

    public String getAnswer_subject() {
        return answer_subject;
    }

    public void setAnswer_subject(String answer_subject) {
        this.answer_subject = answer_subject;
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
}
