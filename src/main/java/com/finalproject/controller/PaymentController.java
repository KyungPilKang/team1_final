package com.finalproject.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class PaymentController {

    @GetMapping("/book-store/payment")
    public String payment() {
        return "/bookstore/payment";
    }

    @GetMapping("book-store/payment/finished")
    public String finished() {
        return "/bookstore/paymentFinished";
    }


}
