package com.finalproject.controller;

import com.finalproject.dto.Book;
import com.finalproject.dto.Cart;
import com.finalproject.dto.PageInfo;
import com.finalproject.service.CartService;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping(value = "/book-store")
public class CartController {

    @Autowired
    HttpSession session;

    @Autowired
    CartService cartService;

//    @GetMapping("/cart")
//    public String cart() {

//        return "/bookstore/cart";
//    }


    @RequestMapping(value = "/cart", method = {RequestMethod.GET, RequestMethod.POST})
    public ModelAndView cart() {
        ModelAndView mv = new ModelAndView();
        String username = (String) session.getAttribute("username");
        try {
            List<Book> cartList = cartService.getCartList(username);
            mv.addObject("cartList", cartList);
            mv.setViewName("/bookstore/cart");
        } catch (Exception e) {
            e.printStackTrace();
            mv.addObject("err", e.getMessage());
        }
        return mv;
    }


    @PostMapping("/putcart")
    public ResponseEntity<?> putCart(@RequestBody String json) {
        ResponseEntity<?> result = null;
        String username = (String) session.getAttribute("username");
        System.out.println("username : " + username);
        try {
            JSONObject inJson = new JSONObject(json);
            int book_num = inJson.getInt("book_num");
            System.out.println("book_num : " + book_num);
            // Check for duplicate
            boolean overlap = cartService.itemOverlap(book_num, username);
            System.out.println("duplicate?" + overlap);
            Map<String, String> overlapData = new HashMap<>();
            if (overlap) {
                overlapData.put("exist", "중복");
            } else {
                // Create cart table by book_num & username
                cartService.insertCart(book_num, username);
                overlapData.put("exist", "담기성공");
            }
            result = new ResponseEntity<Object>(overlapData, HttpStatus.OK);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return result;
    }


    @PostMapping("/delcart")
    public void delCart(@RequestBody String json) {
        String username = (String) session.getAttribute("username");
        System.out.println("username : " + username);
        try{
            JSONObject inJson = new JSONObject(json);
            int book_num = inJson.getInt("book_num");
            cartService.deleteCart(book_num,username);
        }catch(Exception e){
            e.printStackTrace();
        }
    }


    // 임시
    @GetMapping("/order/detail")
    public String detail() {
        return "/bookstore/orderDetail";
    }

}
