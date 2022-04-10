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
    void deleteCart(Map<String, Object> cartItem) throws Exception;
    Cart selectItem(Map<String, Object> cartItem) throws Exception;
    int cartCount(String username) throws Exception;
    List<Book> cartItems(String username) throws Exception; // 카트에 담긴 book 객체
    List<Cart> selectCarts(String username) throws Exception; // 카트 객체
    void updateQty(Map<String, Object> cartMap) throws Exception;
    void deleteCartByUser(String username) throws Exception;
}
