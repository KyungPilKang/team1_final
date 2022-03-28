package com.finalproject.dto;

public class OrderBook {
    int order_book_num;
    String username;
    String order_book_bookNum;
    int order_book_count;

    public int getOrder_book_num() {
        return order_book_num;
    }

    public void setOrder_book_num(int order_book_num) {
        this.order_book_num = order_book_num;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getOrder_book_bookNum() {
        return order_book_bookNum;
    }

    public void setOrder_book_bookNum(String order_book_bookNum) {
        this.order_book_bookNum = order_book_bookNum;
    }

    public int getOrder_book_count() {
        return order_book_count;
    }

    public void setOrder_book_count(int order_book_count) {
        this.order_book_count = order_book_count;
    }
}
