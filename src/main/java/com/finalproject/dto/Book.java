package com.finalproject.dto;

import org.springframework.web.multipart.MultipartFile;

import java.sql.Date;

public class Book {
    private int book_num;
    private int book_price;
    private String book_cat;
    private String book_subject;
    private String book_content;
    private String book_img;
    MultipartFile file;
    private Date book_date;
    private Date book_modDate;
    private int book_count;
    private int book_sales;
    private String book_author;
    private String book_publisher;
    private int book_discount;
    private int book_reprice;
    private String book_keyword;

    public Book() {
    }

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

    public MultipartFile getFile() {
        return file;
    }

    public void setFile(MultipartFile file) {
        this.file = file;
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

    public String getBook_author() {
        return book_author;
    }

    public void setBook_author(String book_author) {
        this.book_author = book_author;
    }

    public String getBook_publisher() {
        return book_publisher;
    }

    public void setBook_publisher(String book_publisher) {
        this.book_publisher = book_publisher;
    }

    public int getBook_discount() {
        return book_discount;
    }

    public void setBook_discount(int book_discount) {
        this.book_discount = book_discount;
    }

    public int getBook_reprice() {
        return book_reprice;
    }

    public void setBook_reprice(int book_reprice) {
        this.book_reprice = book_reprice;
    }

    public String getBook_keyword() {
        return book_keyword;
    }

    public void setBook_keyword(String book_keyword) {
        this.book_keyword = book_keyword;
    }
}





