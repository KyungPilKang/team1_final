package com.finalproject.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value = "/book-store/cart")
public class CartController {

    @GetMapping("")
    public String cart() {
        return "/bookstore/cart";
    }


}
