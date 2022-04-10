package com.finalproject.service;

import com.finalproject.dao.BookDAO;
import com.finalproject.dao.CartDAO;
import com.finalproject.dto.Book;
import com.finalproject.dto.Cart;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class CartServiceImpl implements CartService {

    @Autowired
    BookDAO bookDAO;

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

    @Override
    public List<Book> getCartList(String username) throws Exception {
        return cartDAO.cartItems(username);
    }

    @Override
    public void deleteCart(int book_num, String username) throws Exception {
        Map<String, Object> cartItem = new HashMap<>();
        cartItem.put("book_num", book_num);
        cartItem.put("username", username);
        cartDAO.deleteCart(cartItem);
    }

    @Override
    public List<Cart> getCarts(String username) throws Exception {
        return cartDAO.selectCarts(username);
    }

    @Override
    public void updateQty(String book_num, Object cart_count) throws Exception {
        Map<String, Object> cartMap = new HashMap<>();
        cartMap.put("book_num",book_num);
        cartMap.put("cart_count",cart_count);
        cartDAO.updateQty(cartMap);
    }

    @Override
    public void deleteCartByUser(String username) throws Exception {
        cartDAO.deleteCartByUser(username);
    }


}
