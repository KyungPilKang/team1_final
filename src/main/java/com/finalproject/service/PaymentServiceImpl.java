package com.finalproject.service;

import com.finalproject.dao.OrderBookDAO;
import com.finalproject.dao.OrderDAO;
import com.finalproject.dto.Order;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class PaymentServiceImpl implements PaymentService{

    @Autowired
    OrderDAO orderDAO;

    @Autowired
    OrderBookDAO orderBookDAO;

    @Override
    public void regOrder(Order order) throws Exception {
        orderDAO.insertOrder(order);
    }

    @Override
    public void insertOrderBook(String order_num, String order_book_bookNum, int order_book_count) throws Exception {
        orderBookDAO.insertOrderBook(order_num,order_book_bookNum,order_book_count);
    }

    @Override
    public List<Order> getOrderListByUser(String username) throws Exception {
        return orderDAO.orderListByUser(username);
    }


}
