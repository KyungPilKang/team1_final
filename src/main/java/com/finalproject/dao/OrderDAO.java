package com.finalproject.dao;

import com.finalproject.dto.Order;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import java.util.List;

@Mapper
@Repository
public interface OrderDAO {
    public void insertOrder(Order order) throws Exception;
    public List<Order> orderListByUser(String username) throws Exception;
}
