package com.finalproject.service;

import com.finalproject.dao.OrderDAO;
import com.finalproject.dto.Order;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class PaymentServiceImpl implements PaymentService{

    @Autowired
    OrderDAO orderDAO;

    @Override
    public void regOrder(Order order) throws Exception {
        orderDAO.insertOrder(order);
    }
}
