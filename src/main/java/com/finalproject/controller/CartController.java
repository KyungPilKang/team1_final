package com.finalproject.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value = "/book-store")
public class CartController {

    @GetMapping("/cart")
    public String cart() {
        return "/bookstore/cart";
    }


}
