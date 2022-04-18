package com.finalproject.controller;

import javax.servlet.http.HttpSession;

import com.finalproject.service.MemberService;
import com.finalproject.service.StudyService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.finalproject.dto.Member;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class ViewController {

    @Autowired
    private StudyService studyService;

    @Autowired(required=false)
    MemberService memberService;

    @Autowired
    HttpSession session;

    @GetMapping("/test")
    public String test() {
        return "/mypage/mypage2";
    }

    //nav바 상단 eLEARNING 글자, Home 버튼 클릭시 리턴
    @GetMapping({"/home", "/"})
    public ModelAndView home() {
        ModelAndView mv = new ModelAndView();
        try {
            if(session.getAttribute("username") != null) {
                Member login = memberService.selectMemberByUsername((String) session.getAttribute("username"));
                session.invalidate();
                session.setAttribute("no", login.getNo());
                session.setAttribute("username", login.getUsername());
                session.setAttribute("name", login.getName());
                session.setAttribute("nickname", login.getNickname());
                session.setAttribute("email", login.getEmail());
                session.setAttribute("phone", login.getPhone());
                session.setAttribute("zipcode", login.getZipcode());
                session.setAttribute("doro_juso", login.getDoro_juso());
                session.setAttribute("sangse_juso1", login.getSangse_juso1());
                session.setAttribute("sangse_juso2", login.getSangse_juso2());
                session.setAttribute("role", login.getRole());
            }
            mv.addObject("ns",studyService.getTypeCount("내신"));
            mv.addObject("gs",studyService.getTypeCount("경시대회준비"));
            mv.addObject("sh", studyService.getTypeCount("시험"));
            mv.addObject("bk", studyService.getTypeCount("북클럽"));
            mv.setViewName("/main/index");
        } catch (Exception e) {
            e.printStackTrace();
            mv.addObject("err", e.getMessage());
        }
        return mv;
    }


//	@RequestMapping("/freereg1")
//	public String freeReg1() {
//		return "freelance/regfreelance1";
//	}

//	@RequestMapping("/freereg2")
//	public String freeReg2() {
//		return "freelance/regfreelance2_class";
//	}

    @GetMapping("/iamportTest")
    public String iamport() {
        return "iamport";
    }

    @GetMapping("/resfreeform")
    public String resfreeform() {
        return "freelance/resfreelance";
    }

    @GetMapping("detailfree")
    public String detailfree() {
        return "freelance/detailfreelance_1";
    }

    @GetMapping("test1")
    public String test1() {
        return "admin/admin_qnaInfoForm";
    }


    @GetMapping("tt")
    public String tt() {
        return "/bookstore/paymentFinished";
    }

    @GetMapping("ttt")
    public String ttt() {
        return "/bookstore/orderDetail";
    }
}
