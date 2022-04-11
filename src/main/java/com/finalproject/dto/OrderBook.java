package com.finalproject.dto;

public class OrderBook {
    private int order_book_num; // AI, PK (order_list에 저장할 번호)
    private String order_num; // 주문번호
    private String order_book_bookNum; // 주문한 책 번호
    private int order_book_count; // 주문한 책 수량

    public int getOrder_book_num() {
        return order_book_num;
    }

    public void setOrder_book_num(int order_book_num) {
        this.order_book_num = order_book_num;
    }

    public String getOrder_num() {
        return order_num;
    }

    public void setOrder_num(String order_num) {
        this.order_num = order_num;
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
