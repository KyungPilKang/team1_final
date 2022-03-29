package com.finalproject.dto;

import java.sql.Date;

public class Book {
    private int book_num;
    private int book_price;
    private String book_cat;
    private String book_subject;
    private String book_content;
    private String book_img;
    private Date book_date;
    private Date book_modDate;
    private int book_count;
    private int book_sales;
    private String book_heart;
    private String book_heartState; // heart 눌렀는지

    public int getBook_num() {
        return book_num;
    }

    public void setBook_num(int book_num) {
        this.book_num = book_num;
    }

    public int getBook_price() {
        return book_price;
    }

    public void setBook_price(int book_price) {
        this.book_price = book_price;
    }

    public String getBook_cat() {
        return book_cat;
    }

    public void setBook_cat(String book_cat) {
        this.book_cat = book_cat;
    }

    public String getBook_subject() {
        return book_subject;
    }

    public void setBook_subject(String book_subject) {
        this.book_subject = book_subject;
    }

    public String getBook_content() {
        return book_content;
    }

    public void setBook_content(String book_content) {
        this.book_content = book_content;
    }

    public String getBook_img() {
        return book_img;
    }

    public void setBook_img(String book_img) {
        this.book_img = book_img;
    }

    public Date getBook_date() {
        return book_date;
    }

    public void setBook_date(Date book_date) {
        this.book_date = book_date;
    }

    public Date getBook_modDate() {
        return book_modDate;
    }

    public void setBook_modDate(Date book_modDate) {
        this.book_modDate = book_modDate;
    }

    public int getBook_count() {
        return book_count;
    }

    public void setBook_count(int book_count) {
        this.book_count = book_count;
    }

    public int getBook_sales() {
        return book_sales;
    }

    public void setBook_sales(int book_sales) {
        this.book_sales = book_sales;
    }

    public String getBook_heart() {
        return book_heart;
    }

    public void setBook_heart(String book_heart) {
        this.book_heart = book_heart;
    }

    public String getBook_heartState() {
        return book_heartState;
    }

    public void setBook_heartState(String book_heartState) {
        this.book_heartState = book_heartState;
    }
}




