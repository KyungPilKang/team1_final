package com.finalproject.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class MypageController {

    @GetMapping("/mypage")
    public String mypage() {
        return "/mypage/mypage";
    }

    @GetMapping("/freelancepagemakemove")
    public String freelancepagemakemove() {
        return "/mypage/freelancepageMakeMove";
    }

    @GetMapping("/freelancepagereview")
    public String freelancepagereview() {
        return "/mypage/freelancepageReview";
    }

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

}
