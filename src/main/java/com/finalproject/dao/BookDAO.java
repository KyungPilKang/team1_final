package com.finalproject.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.finalproject.dto.Book;

@Mapper

@Repository
public interface BookDAO {
    public void insertBook(Book book) throws Exception;
    int selectBookCount() throws Exception;
    List<Book> selectBookList(int startrow) throws Exception;
    Book selectBook(int book_num) throws Exception;
    public void deleteBook(int book_num) throws Exception;
    List<Book> selectSearchList(@Param("startrow") int startrow, @Param("category") String category, @Param("keyword") String keyword) throws Exception;
    public void updateBookSales(int book_num, int book_sales) throws Exception;
    List<Book> selectSortList(int startrow, String type) throws Exception;
}
