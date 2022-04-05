package com.finalproject.service;

import com.finalproject.dao.CartDAO;
import com.finalproject.dto.Cart;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.Map;

@Service
public class CartServiceImpl implements CartService {

    @Autowired
    CartDAO cartDAO;

    @Override
    public void insertCart(int book_num, String username) throws Exception {
        Map<String, Object> cartItem = new HashMap<>();
        cartItem.put("book_num", book_num);
        cartItem.put("username", username);

        cartDAO.insertCart(cartItem);
    }

    @Override
    public boolean itemOverlap(int book_num, String username) throws Exception {
        Map<String, Object> cartItem = new HashMap<>();
        cartItem.put("book_num", book_num);
        cartItem.put("username", username);
        Cart item = cartDAO.selectItem(cartItem);
        return item != null;
    }

    @Override
    public int cartCount(String username) throws Exception {
        return cartDAO.cartCount(username);
    }


}
