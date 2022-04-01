package com.finalproject.dao;

import com.finalproject.dto.Book;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

@Mapper

@Repository
public interface BookDAO {
    void insertBook(Book book) throws Exception;

}
