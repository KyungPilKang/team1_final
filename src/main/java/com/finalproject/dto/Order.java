package com.finalproject.dto;

import java.sql.Date;

public class Order {
    private int order_num;
    private String username;
    private Date order_date;
    private String order_book_list;
    private String order_method;
    private String order_deli;
    private String order_state;

    public int getOrder_num() {
        return order_num;
    }

    public void setOrder_num(int order_num) {
        this.order_num = order_num;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public Date getOrder_date() {
        return order_date;
    }

    public void setOrder_date(Date order_date) {
        this.order_date = order_date;
    }

    public String getOrder_book_list() {
        return order_book_list;
    }

    public void setOrder_book_list(String order_book_list) {
        this.order_book_list = order_book_list;
    }

    public String getOrder_method() {
        return order_method;
    }

    public void setOrder_method(String order_method) {
        this.order_method = order_method;
    }

    public String getOrder_deli() {
        return order_deli;
    }

    public void setOrder_deli(String order_deli) {
        this.order_deli = order_deli;
    }

    public String getOrder_state() {
        return order_state;
    }

    public void setOrder_state(String order_state) {
        this.order_state = order_state;
    }
}
