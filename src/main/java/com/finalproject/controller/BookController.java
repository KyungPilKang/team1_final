package com.finalproject.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class BookController {

    @GetMapping("/book-store")
    public String mainpage() {
        return "/bookstore/bookStore";
    }

    @RequestMapping("/book-store/juso")
    public String jusoCallBacks() {
        return "/loginJoin/juso";
    }

}
