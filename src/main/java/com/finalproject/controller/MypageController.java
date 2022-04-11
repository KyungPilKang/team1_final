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

    @GetMapping("/teachpagedefult")
    public String teachpagedefult() {
        return "/mypage/teachpageDefult";
    }

    @GetMapping("/teachpagemove")
    public String teachpagemove() {
        return "/mypage/teachpageMove";
    }

    @GetMapping("/teachpagerequest")
    public String teachpagerequest() {
        return "/mypage/teachpageRequest";
    }

    @GetMapping("/studentpagedefult")
    public String studentpagedefult() {
        return "/mypage/studentpageDefult";
    }

    @GetMapping("/studentpagequick")
    public String studentpagequick() {
        return "/mypage/studentpageQuick";
    }

    @GetMapping("/studentpagestudy")
    public String studentpagestudy() {
        return "/mypage/studentpageStudy";
    }

    @GetMapping("/studentmovedetail")
    public String studentmovedetail() {
        return "/mypage/studentMovedetail";
    }

    @GetMapping("/main")
    public String main() {
        return "/main/mainPage";
    }


}
