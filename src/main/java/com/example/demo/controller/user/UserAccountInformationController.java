package com.example.demo.controller.user;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.demo.model.UserEntity;
import com.example.demo.service.OrderService;
import com.example.demo.service.SessionService;

/**
 * UserAccountInformationController
 */
@Controller
@RequestMapping("/user")
public class UserAccountInformationController {
    @Autowired
    OrderService orderService;
    @Autowired
    SessionService sessionService;

    @GetMapping("/accountOrder")
    public String accountOrder(Model model) {
        UserEntity user = sessionService.get("userSession");
        model.addAttribute("acOrders", orderService.findByUserUserId(user.getUserId()));
        return "user/accountOrder";
    }

    @GetMapping("/accountInfo")
    public String accountInfo(Model model) {

        return "user/accountInfo";
    }
}