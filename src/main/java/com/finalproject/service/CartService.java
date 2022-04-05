package com.finalproject.service;

import com.finalproject.dto.Book;

import java.util.List;

public interface CartService {
    //장바구니 넣기
    void insertCart(int book_num, String username) throws Exception;

    //장바구니에 해당 유저네임(세션)으로 해당 북넘버가 있는지 찾아보는 서비스
    boolean itemOverlap(int book_num, String username) throws Exception;

    //장바구니에 담긴 상품수
    int cartCount(String username) throws Exception;

    //장바구니에 담긴 카트 아이템 list 가져오기
    List<Book> getCartList(String username) throws Exception;

}
