package com.finalproject.controller;

import com.finalproject.dto.Book;
import com.finalproject.dto.Cart;
import com.finalproject.dto.Order;
import com.finalproject.service.BookStoreService;
import com.finalproject.service.CartService;
import com.finalproject.service.PaymentService;
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

    @Autowired
    private PaymentService paymentService;

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
            for (int i = 0; i < order_book_num.length; i++) {
                cartService.updateQty(order_book_num[i], order_qty[i]);
            }

            mv.addObject("orderList", cartList);
            mv.addObject("qtyList", order_qty);
            mv.addObject("total_price", total_price);
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
            mv.addObject("orderList", cartList);
            mv.addObject("qtyList", qtyList);
            mv.addObject("total_price", book_price);
            mv.setViewName("/bookstore/payment");
        } catch (Exception e) {
            e.printStackTrace();
            mv.addObject("err", e.getMessage());
        }
        return mv;
    }


    @PostMapping("/finished")
    public ModelAndView finished(@ModelAttribute Order order) {
        ModelAndView mv = new ModelAndView();

        // 임시 세션
        session.setAttribute("username", "jay");
        String username = (String) session.getAttribute("username");
        try {
            System.out.println(order.getZipcode());
            System.out.println(order.getDeli_address());
            System.out.println(order.getDeli_name());
            System.out.println(order.getSangse_juso());
            System.out.println(order.getDoro_juso());
            System.out.println(order.getPhone());
            System.out.println(order.getEmail());
            // 결제 수단도 받아오고, 주문번호도 총액도 받아와야한다.
            // order_method / order_num / total_price (이 값을 db에 넣자)

//            order.setOrder_method("tosspay");
//            order.setOrder_num("123456789");
            System.out.println("주문방법:" + order.getOrder_method());
            System.out.println("주문번호" + order.getOrder_num());
            System.out.println("주문총액" + order.getTotal_price());


            // 1. 위 input 데이터들을 다 db에 넣어줘야한다.
            paymentService.regOrder(order);
            // 2. username에 해당하는 order_book 테이블에 cart 테이블들의 정보+주문번호를 넘긴다
            // cart 객체를 가져와서
            List<Cart> carts = cartService.getCarts(username);
            // 각각 요소들을 order_book에 넣고, 주문번호도 추가로 넣어준다
            for (Cart cart : carts) {
                String orderNum = order.getOrder_num();
                String bookNum = cart.getCart_bookNum();
                int BookCount = cart.getCart_count();
                // order_book을 테이블에 insert
                paymentService.insertOrderBook(orderNum, bookNum, BookCount);
            }
            // 3. 마지막으로 username에 해당하는 cart DB를 전부 제거한다
            cartService.deleteCartByUser(username);

            mv.setViewName("/bookstore/paymentFinished");
        } catch (Exception e) {
            e.printStackTrace();
            mv.addObject("err", e.getMessage());
        }
        return mv;
    }


}
