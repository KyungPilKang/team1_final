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

}
