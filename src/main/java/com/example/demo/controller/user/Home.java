package com.example.demo.controller.user;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/home")
public class Home {
    @GetMapping("/index")
    public String index(){
        return "user/index";
    }
    @GetMapping("/shop")
    public String shop(){
        return "user/shop";
    }
    @GetMapping("/detail")
    public String detail(){
        return "user/detail";
    }
    @GetMapping("/cart")
    public String cart(){
        return "user/cart";
    }
}