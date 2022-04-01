package com.finalproject.controller;

import com.finalproject.dto.Book;
import com.finalproject.service.BookStoreService;
import org.apache.tomcat.util.codec.binary.Base64;
import org.jsoup.Jsoup;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.ServletContext;
import java.io.File;
import java.io.FileOutputStream;
import java.util.List;

@Controller
@RequestMapping(value = "/book-store")
public class BookController {

    @Autowired
    private BookStoreService bookStoreService;

    @Autowired
    private ServletContext servletContext;


    @GetMapping("")
    public String mainpage() {
        return "/bookstore/bookStore";
    }


    @RequestMapping("/juso")
    public String jusoCallBacks() {
        return "/loginJoin/juso";
    }

    @RequestMapping("/delivery")
    public String delivery() {
        return "/bookstore/delivery";
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
