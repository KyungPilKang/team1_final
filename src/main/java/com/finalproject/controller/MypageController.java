package com.finalproject.controller;

import com.finalproject.service.FreelanceService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import javax.servlet.http.HttpSession;

@Controller
public class MypageController {

    @Autowired
    private HttpSession session;

    @Autowired
    private FreelanceService freelanceService;

    @GetMapping("/mypage")
    public String mypage() {
        return "/mypage/mypage";
    }

}
