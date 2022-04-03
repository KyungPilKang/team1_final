package com.finalproject.controller;

import com.finalproject.dto.Book;
import com.finalproject.dto.PageInfo;
import com.finalproject.service.BookStoreService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.ServletContext;
import java.io.File;
import java.util.List;

@Controller
@RequestMapping(value = "/book-store")
public class BookController {

    @Autowired
    private BookStoreService bookStoreService;

    @Autowired
    private ServletContext servletContext;


//    @GetMapping("")
//    public String mainpage() {
//        return "/bookstore/bookStore";
//    }


    @RequestMapping("/juso")
    public String jusoCallBacks() {
        return "/loginJoin/juso";
    }

    @RequestMapping("/delivery")
    public String delivery() {
        return "/bookstore/delivery";
    }


    @RequestMapping(value = "", method = {RequestMethod.GET, RequestMethod.POST})
    public ModelAndView boardlist(@RequestParam(value = "page", defaultValue = "1") int page) {
        ModelAndView mv = new ModelAndView();
        PageInfo pageInfo = new PageInfo();
        try {
            List<Book> bookList = bookStoreService.getBookList(page, pageInfo);
            mv.addObject("pageInfo", pageInfo);
            mv.addObject("bookList", bookList);
            mv.setViewName("/bookstore/bookStore");
        } catch (Exception e) {
            e.printStackTrace();
            mv.addObject("err", e.getMessage());
        }
        return mv;
    }

    @GetMapping("/regform")
    public String regform() {
        return "/bookstore/registerForm";
    }

    @PostMapping("/regbook")
    public ModelAndView regbook(@ModelAttribute Book book) {
        ModelAndView mv = new ModelAndView();
        try {
            if (!book.getFile().isEmpty()) {
                String path = servletContext.getRealPath("/book_upload/image/");
                File destFile = new File(path + book.getFile().getOriginalFilename());
                book.setBook_img(book.getFile().getOriginalFilename());
                book.getFile().transferTo(destFile);
            }
            bookStoreService.regBook(book);
            mv.setViewName("redirect:/book-store");
        } catch (Exception e) {
            e.printStackTrace();
            mv.addObject("err", e.getMessage());
        }
        return mv;
    }




}
