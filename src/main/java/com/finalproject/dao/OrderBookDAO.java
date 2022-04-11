package com.finalproject.dao;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

@Mapper
@Repository
public interface OrderBookDAO {
    public void insertOrderBook(String order_num, String order_book_bookNum, int order_book_count) throws Exception;
}
