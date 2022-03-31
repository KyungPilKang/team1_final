package com.finalproject.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value = "/request")
public class RequestController {

    @GetMapping("")
    public String request() {
        return "/servicecenter/request";
    }

    @GetMapping("/chatbot")
    public String chatbot() {
        return "/servicecenter/chatbot";
    }

    @GetMapping("/my")
    public String my() {
        return "/servicecenter/requestMy";
    }

    @GetMapping("/write")
    public String write() { return "/servicecenter/requestWrite";
    }

    @GetMapping("/detail")
    public String detail() { return "/servicecenter/requestDetail";
    }

    @GetMapping("/complete")
    public String complete() { return "/servicecenter/requestComp";
    }


}
