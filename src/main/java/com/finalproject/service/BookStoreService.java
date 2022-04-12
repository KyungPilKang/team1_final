package com.finalproject.service;

import com.finalproject.dto.Book;
import com.finalproject.dto.PageInfo;

import java.util.List;

public interface BookStoreService {
    void regBook(Book book) throws Exception;
    List<Book> getBookList(int page, PageInfo pageInfo) throws Exception;
    Book selectBook(int book_num) throws Exception;
    void removeBook(int book_num) throws Exception;
    List<Book> searchList(int page,PageInfo pageInfo,String category,String keyword) throws Exception;
    void updateBookSales(int book_num,int book_sales) throws Exception;
    List<Book> sortList(int page,PageInfo pageInfo,String type) throws Exception;
}
