package com.finalproject.service;

import com.finalproject.dto.Book;
import com.finalproject.dto.PageInfo;

import java.util.List;

public interface BookStoreService {
    void regBook(Book book) throws Exception;
    List<Book> getBookList(int page, PageInfo pageInfo) throws Exception;
    Book selectBook(int book_num) throws Exception;
    void removeBook(int book_num) throws Exception;
}
