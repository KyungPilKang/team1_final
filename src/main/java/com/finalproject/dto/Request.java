package com.finalproject.dto;

import java.sql.Date;

public class Request {
    private int request_num;
    private String username;
    private String request_client;
    private String request_type;
    private String request_subject;
    private String request_content;
    private Date request_date;
    private String request_state;

    public int getRequest_num() {
        return request_num;
    }

    public void setRequest_num(int request_num) {
        this.request_num = request_num;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getRequest_client() {
        return request_client;
    }

    public void setRequest_client(String request_client) {
        this.request_client = request_client;
    }

    public String getRequest_type() {
        return request_type;
    }

    public void setRequest_type(String request_type) {
        this.request_type = request_type;
    }

    public String getRequest_subject() {
        return request_subject;
    }

    public void setRequest_subject(String request_subject) {
        this.request_subject = request_subject;
    }

    public String getRequest_content() {
        return request_content;
    }

    public void setRequest_content(String request_content) {
        this.request_content = request_content;
    }

    public Date getRequest_date() {
        return request_date;
    }

    public void setRequest_date(Date request_date) {
        this.request_date = request_date;
    }

    public String getRequest_state() {
        return request_state;
    }

    public void setRequest_state(String request_state) {
        this.request_state = request_state;
    }
}
