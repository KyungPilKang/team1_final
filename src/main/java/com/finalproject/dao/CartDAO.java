package com.finalproject.dao;

import com.finalproject.dto.Book;
import com.finalproject.dto.Cart;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Map;

@Mapper

@Repository
public interface CartDAO {

    void insertCart(Map<String, Object> cartItem) throws Exception;
    Cart selectItem(Map<String, Object> cartItem) throws Exception;
    int cartCount(String username) throws Exception;
    List<Book> cartItems(String username) throws Exception;
}
