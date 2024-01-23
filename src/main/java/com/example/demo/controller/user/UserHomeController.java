package com.example.demo.controller.user;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/user")
public class UserHomeController {
    @GetMapping("/index")
    public String index() {
        return "user/index";
    }

    @GetMapping("/detail")
    public String detail() {
        return "user/detail";
    }

    @GetMapping("/cart")
    public String cart() {
        return "user/cart";
    }

    @GetMapping("/register")
    public String register() {
        return "user/register";
    }

    @GetMapping("/order")
    public String cartdetail() {
        return "user/order";
    }

    @GetMapping("/accountInfo")
    public String accountInfo() {
        return "user/accountInfo";
    }

    @GetMapping("/accountOrder")
    public String accountOrder() {
        return "user/accountOrder";
    }

    @GetMapping("/accountChPassword")
    public String accountChPassword() {
        return "user/accountChPassword";
    }
}
