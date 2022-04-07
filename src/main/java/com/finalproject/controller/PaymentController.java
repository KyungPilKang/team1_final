package com.finalproject.controller;

import com.finalproject.dto.Book;
import com.finalproject.service.BookStoreService;
import com.finalproject.service.CartService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;
import java.util.*;

@Controller
@RequestMapping(value = "/book-store/payment")
public class PaymentController {

    @Autowired
    HttpSession session;

    @Autowired
    CartService cartService;

    @Autowired
    private BookStoreService bookStoreService;

    @GetMapping("/finished")
    public String finished() {
        return "/bookstore/paymentFinished";
    }

    @RequestMapping("/juso")
    public String jusoCallBacks() {
        return "/loginJoin/juso";
    }

    // Cart > Payment
    @PostMapping(value = "/order")
    public ModelAndView order(@RequestParam String[] order_book_num, @RequestParam String[] order_qty,
                              @RequestParam(value = "total_price") int total_price) {
        ModelAndView mv = new ModelAndView();
        // 임시 세션
        session.setAttribute("username", "jay");
        String username = (String) session.getAttribute("username");
        try {
            System.out.println("order_book_num : " + Arrays.toString(order_book_num));
            System.out.println("order_qty : " + Arrays.toString(order_qty));
            System.out.println("total_price : " + total_price);

            List<Book> cartList = cartService.getCartList(username);
            List<String> qtyList = List.of(order_qty);

            mv.addObject("orderList",cartList);
            mv.addObject("qtyList",qtyList);
            mv.addObject("total_price",total_price);
            mv.setViewName("/bookstore/payment");
        } catch (Exception e) {
            e.printStackTrace();
            mv.addObject("err", e.getMessage());
        }
        return mv;
    }

    // BookStore > Payment
    @PostMapping(value = "/now")
    public ModelAndView now(@RequestParam(value = "book_num") int book_num,
                            @RequestParam(value = "book_price") int book_price) {
        ModelAndView mv = new ModelAndView();
        // 임시 세션
        session.setAttribute("username", "jay");
        String username = (String) session.getAttribute("username");
        try {
            List<Book> cartList = Collections.singletonList(bookStoreService.selectBook(book_num));
            List<String> qtyList = Collections.singletonList("1");
            mv.addObject("orderList",cartList);
            mv.addObject("qtyList",qtyList);
            mv.addObject("total_price",book_price);
            mv.setViewName("/bookstore/payment");
        } catch (Exception e) {
            e.printStackTrace();
            mv.addObject("err", e.getMessage());
        }
        return mv;
    }


}
