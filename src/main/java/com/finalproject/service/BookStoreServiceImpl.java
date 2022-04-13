package com.finalproject.service;

import com.finalproject.dao.BookDAO;
import com.finalproject.dto.Book;
import com.finalproject.dto.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Objects;

@Service
public class BookStoreServiceImpl implements BookStoreService{

    @Autowired
    BookDAO bookDAO;

    @Override
    public void regBook(Book book) throws Exception {
        bookDAO.insertBook(book);
    }

    @Override
    public List<Book> getBookList(int page, PageInfo pageInfo) throws Exception {
        int listCount = bookDAO.selectBookCount();
        int maxPage = (int)Math.ceil((double)listCount/10);
        int startPage=((int)((double)page/10+0.9)-1)*10+1;
        int endPage=startPage+10-1;
        if(endPage>maxPage) endPage=maxPage;
        pageInfo.setStartPage(startPage);
        pageInfo.setEndPage(endPage);
        pageInfo.setMaxPage(maxPage);
        pageInfo.setPage(page);
        pageInfo.setListCount(listCount);
        int startrow = (page-1)*10+1;
        return bookDAO.selectBookList(startrow);
    }

    @Override
    public Book selectBook(int book_num) throws Exception {
        return bookDAO.selectBook(book_num);
    }

    @Override
    public void removeBook(int book_num) throws Exception {
        bookDAO.deleteBook(book_num);
    }

    @Override
    public List<Book> searchList(int page, PageInfo pageInfo, String category, String keyword) throws Exception {
        int listCount = bookDAO.selectBookCount();
        int maxPage = (int)Math.ceil((double)listCount/10);
        int startPage=((int)((double)page/10+0.9)-1)*10+1;
        int endPage=startPage+10-1;
        if(endPage>maxPage) endPage=maxPage;
        pageInfo.setStartPage(startPage);
        pageInfo.setEndPage(endPage);
        pageInfo.setMaxPage(maxPage);
        pageInfo.setPage(page);
        pageInfo.setListCount(listCount);
        int startrow = (page-1)*10+1;
        return bookDAO.selectSearchList(startrow,category,keyword);
    }

    @Override
    public void updateBookSales(int book_num, int book_sales) throws Exception {
        bookDAO.updateBookSales(book_num,book_sales);
    }

    @Override
    public List<Book> sortList(int page, PageInfo pageInfo, String type) throws Exception {
        int listCount = bookDAO.selectBookCount();
        int maxPage = (int)Math.ceil((double)listCount/10);
        int startPage=((int)((double)page/10+0.9)-1)*10+1;
        int endPage=startPage+10-1;
        if(endPage>maxPage) endPage=maxPage;
        pageInfo.setStartPage(startPage);
        pageInfo.setEndPage(endPage);
        pageInfo.setMaxPage(maxPage);
        pageInfo.setPage(page);
        pageInfo.setListCount(listCount);
        int startrow = (page-1)*10+1;
        if(Objects.equals(type, "sales")){
            return bookDAO.selectSortSales(startrow);
        } else if(Objects.equals(type, "newest")){
            return bookDAO.selectSortNum(startrow);
        } else if(Objects.equals(type, "name")){
            return bookDAO.selectSortSubject(startrow);
        }
        return null;
    }


}
