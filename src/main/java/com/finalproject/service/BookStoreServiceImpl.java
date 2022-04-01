package com.finalproject.service;

import com.finalproject.dao.BookDAO;
import com.finalproject.dto.Book;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class BookStoreServiceImpl implements BookStoreService{

    @Autowired
    BookDAO bookDAO;

    @Override
    public void regBook(Book book) throws Exception {
        bookDAO.insertBook(book);
    }




}
