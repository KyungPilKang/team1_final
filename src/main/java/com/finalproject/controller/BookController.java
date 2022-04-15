package com.finalproject.controller;

import com.finalproject.dto.Book;
import com.finalproject.dto.PageInfo;
import com.finalproject.service.BookStoreService;
import com.finalproject.service.CartService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.net.URLEncoder;
import java.util.List;

@Controller
@RequestMapping(value = "/book-store")
public class BookController {

    @Autowired
    private HttpSession session;

    @Autowired
    private BookStoreService bookStoreService;

    @Autowired
    private CartService cartService;

    @Autowired
    private ServletContext servletContext;


    @RequestMapping("/delivery")
    public String delivery() {
        return "/bookstore/delivery";
    }


    @RequestMapping(value = "", method = {RequestMethod.GET, RequestMethod.POST})
    public ModelAndView boardlist(@RequestParam(value = "page", defaultValue = "1") int page) {
        ModelAndView mv = new ModelAndView();
        PageInfo pageInfo = new PageInfo();
        String username = (String) session.getAttribute("username");
        String role = (String) session.getAttribute("role");
        System.out.println("username[BookCont]:"+username);
        System.out.println("role[BookCont]:"+role);
        try {
            int cartCount = cartService.cartCount(username);
            mv.addObject("cartCount",cartCount);
            List<Book> bookList = bookStoreService.getBookList(page, pageInfo);
            mv.addObject("pageInfo", pageInfo);
            mv.addObject("bookList", bookList);
            mv.setViewName("/bookstore/bookStore");
        } catch (Exception e) {
            e.printStackTrace();
            mv.addObject("err", e.getMessage());
        }
        return mv;
    }

    @GetMapping("/regform")
    public String regform() {
        return "/bookstore/registerForm";
    }

    @PostMapping("/regbook")
    public ModelAndView regbook(@ModelAttribute Book book) {
        ModelAndView mv = new ModelAndView();
        try {
            if (!book.getFile().isEmpty()) {
//                  String path = servletContext.getRealPath("/book_upload/image/");
                String path = "/upload/";
                File destFile = new File(path + book.getFile().getOriginalFilename());
                book.setBook_img(book.getFile().getOriginalFilename());
                book.getFile().transferTo(destFile);
            }
            bookStoreService.regBook(book);
            mv.setViewName("redirect:/book-store");
        } catch (Exception e) {
            e.printStackTrace();
            mv.addObject("err", e.getMessage());
        }
        return mv;
    }


    @GetMapping(value = "/book-img/{filename}")
    public void image(@PathVariable String filename, HttpServletRequest request, HttpServletResponse response) {
//        String path = servletContext.getRealPath("/book_upload/image/");
        String path = "/upload/";
        File file = new File(path + filename);
        String sfilename = null;
        FileInputStream fis = null;
        try {
            /* HttpServletRequest request */
            if (request.getHeader("User-Agent").indexOf("MSIE") > -1) {
                sfilename = URLEncoder.encode(file.getName(), "utf-8");
            } else {
                sfilename = new String(file.getName().getBytes("utf-8"), "ISO-8859-1");
            }
            /* HttpServletResponse response */
            response.setCharacterEncoding("utf-8");
            response.setContentType("application/octet-stream;charset=utf-8");
            response.setHeader("Content-Disposition", "attachment; filename=" + sfilename);

            OutputStream out = response.getOutputStream();
            fis = new FileInputStream(file);
            FileCopyUtils.copy(fis, out);
            out.flush();
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (fis != null) {
                try {
                    fis.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
        }
    }


    @GetMapping(value = "/bookdetail")
    public ModelAndView boardDetail(@RequestParam(value = "book_num") int book_num) {
        ModelAndView mv = new ModelAndView();
        try{
            Book book = bookStoreService.selectBook(book_num);
            mv.addObject("book",book);
            mv.setViewName("bookstore/bookDetail");
        } catch (Exception e){
            e.printStackTrace();
            mv.addObject("err", e.getMessage());
        }
        return mv;
    }

    @GetMapping(value = "/delbook")
    public ModelAndView delbook(@RequestParam(value = "book_num") int book_num){
        ModelAndView mv = new ModelAndView();
        try {
            bookStoreService.removeBook(book_num);
            mv.setViewName("redirect:/book-store");
        } catch (Exception e) {
            e.printStackTrace();
            mv.addObject("err", e.getMessage());
        }
        return mv;
    }


    @GetMapping(value = "book-search")
    public ModelAndView board_search(@ModelAttribute Book book, @RequestParam(value = "page", defaultValue = "1") int page) {

        ModelAndView mv = new ModelAndView();
        PageInfo pageInfo = new PageInfo();

        String username = (String) session.getAttribute("username");
        try {
            int cartCount = cartService.cartCount(username);
            mv.addObject("cartCount",cartCount);
            System.out.println("카테고리:"+book.getBook_cat());
            System.out.println("검색어:"+book.getBook_keyword());
            String category = book.getBook_cat();
            String keyword = book.getBook_keyword();

            List<Book> searchResults = bookStoreService.searchList(page,pageInfo,category,keyword);
            int resultCount = searchResults.size();
            mv.addObject("keyword",keyword);
            mv.addObject("pageInfo", pageInfo);
            mv.addObject("bookList",searchResults);
            mv.addObject("resultCount",resultCount);
            mv.setViewName("/bookstore/bookStore");
        } catch (Exception e) {
            e.printStackTrace();
            mv.addObject("err", e.getMessage());
        }
        return mv;
    }


    @GetMapping(value = "/sort/{type}")
    public ModelAndView sort(@PathVariable String type, @RequestParam(value = "page", defaultValue = "1") int page) {
        ModelAndView mv = new ModelAndView();
        PageInfo pageInfo = new PageInfo();
        String username = (String) session.getAttribute("username");
        try {
            int cartCount = cartService.cartCount(username);
            mv.addObject("cartCount",cartCount);
            List<Book> sortResults = bookStoreService.sortList(page,pageInfo,type);
            mv.addObject("pageInfo", pageInfo);
            mv.addObject("bookList",sortResults);
            mv.setViewName("/bookstore/bookStore");
        } catch (Exception e) {
            e.printStackTrace();
            mv.addObject("err", e.getMessage());
        }
        return mv;
    }

}
