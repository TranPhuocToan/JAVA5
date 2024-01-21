package com.example.demo.controller.user;

import java.util.List;

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
import org.springframework.web.bind.annotation.RequestParam;

import com.example.demo.model.UserEntity;
import com.example.demo.repository.UserEntityDAO;
import com.example.demo.service.ParamService;
import com.example.demo.service.SessionService;
import com.example.demo.service.UserService;

@Controller
@RequestMapping("/account")
public class UserAccountController {
    @Autowired
    SessionService sessionService;
    @Autowired
    ParamService paramService;
    @Autowired
    UserEntityDAO userDao;
    @Autowired
    UserService userService;

    @GetMapping("/login")
    public String LoginForm() {
        return "user/login";
    }

    @PostMapping("/login")
    public String LoginForm(Model model, @RequestParam("username") String us, @RequestParam("password") String pw) {
        System.out.println(us + " " + pw);
        // Boolean rm = paramService.getBoolean("remember", false);
        List<UserEntity> userEntity = userService.findByUsername(us);
        for (UserEntity uEntity : userEntity) {
            if (uEntity.getUserName().equals(us) && uEntity.getPassWord().equals(pw)) {
                sessionService.set("userSession", uEntity);
                return "user/index";
            }
        }
        model.addAttribute("message", "Thông tin đăng nhập không đúng !!");
        return "user/login";
    }

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
        userDao.save(us);
        return "user/login";
    }

    @GetMapping("/logout")
    public String logout() {
        sessionService.remove("userSession");
        return "user/index";
    }
}
