package com.finalproject.controller;

import com.finalproject.dto.Order;
import com.finalproject.service.FreelanceService;
import com.finalproject.service.PaymentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
public class MypageController {

    @Autowired
    private HttpSession session;

    @Autowired
    private FreelanceService freelanceService;

    @Autowired
    private PaymentService paymentService;

    @GetMapping("/mypage")
    public String mypage() {
        return "/mypage/mypage";
    }

    @GetMapping("/mypagedelivery")
    public ModelAndView mypagedelivery() {
        ModelAndView mv = new ModelAndView();
        String username = (String) session.getAttribute("username");
        System.out.println("dbwjsd:"+username);
        try {
            List<Order> orderList = paymentService.getOrderListByUser(username);
            mv.addObject("orderList",orderList);
            mv.setViewName("/mypage/mypageDelivery");
        } catch (Exception e) {
            e.printStackTrace();
        }
        return mv;
    }

}
