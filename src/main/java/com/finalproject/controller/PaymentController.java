package com.finalproject.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value = "/book-store/payment")
public class PaymentController {

    @GetMapping("")
    public String payment() {
        return "/bookstore/payment";
    }

    @GetMapping("/finished")
    public String finished() {
        return "/bookstore/paymentFinished";
    }


}
