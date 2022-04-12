package com.finalproject.dao;

import com.finalproject.dto.Book;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import java.util.List;

@Mapper

@Repository
public interface BookDAO {
    public void insertBook(Book book) throws Exception;
    int selectBookCount() throws Exception;
    List<Book> selectBookList(int startrow) throws Exception;
    Book selectBook(int book_num) throws Exception;
    public void deleteBook(int book_num) throws Exception;
    List<Book> selectSearchList(int startrow, String category, String keyword) throws Exception;
    public void updateBookSales(int book_num, int book_sales) throws Exception;
    List<Book> selectSortList(int startrow, String type) throws Exception;
}
