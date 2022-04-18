package com.finalproject.service;

import com.finalproject.dto.Order;

import java.util.List;

public interface PaymentService {
    void regOrder(Order order) throws Exception;
    void insertOrderBook(String order_num, String order_book_bookNum, int order_book_count) throws Exception;
    List<Order> getOrderListByUser(String username) throws Exception;
}
