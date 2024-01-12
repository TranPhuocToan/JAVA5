package com.example.demo.controller.user;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.context.properties.bind.BindResult;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.demo.model.UserEntity;
import com.example.demo.service.ParamService;

@Controller
@RequestMapping("/account")
public class UserAccountController {
    @Autowired
    ParamService paramService;

    @GetMapping("/register")
    public String registerForm(@ModelAttribute("user") UserEntity us, Model model) {
        return "user/register";
    }

    @PostMapping("/register")
    public String registerForm(@Validated @ModelAttribute("user") UserEntity us, BindingResult result, Model model) {
        String cfpw = paramService.getString("cfpassword", null);
        System.out.println(cfpw);
        if (result.hasErrors()) {
            return "user/register";
        } else if (!cfpw.equals(us.getPassWord())) {
            model.addAttribute("message_cf", "Xác nhận mật khẩu không khớp");
            return "user/register";
        }
        return "user/login";
    }
}
