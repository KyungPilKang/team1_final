package com.finalproject.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value = "/book-store")
public class BookController {

    @GetMapping("")
    public String mainpage() {
        return "/bookstore/bookStore";
    }

    @RequestMapping("/juso")
    public String jusoCallBacks() {
        return "/loginJoin/juso";
    }

}
