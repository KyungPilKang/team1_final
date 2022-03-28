package com.finalproject.dto;

public class Cart {
    int cart_num;
    String username;
    String cart_bookNum;
    int cart_count;

    public int getCart_num() {
        return cart_num;
    }

    public void setCart_num(int cart_num) {
        this.cart_num = cart_num;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getCart_bookNum() {
        return cart_bookNum;
    }

    public void setCart_bookNum(String cart_bookNum) {
        this.cart_bookNum = cart_bookNum;
    }

    public int getCart_count() {
        return cart_count;
    }

    public void setCart_count(int cart_count) {
        this.cart_count = cart_count;
    }
}
