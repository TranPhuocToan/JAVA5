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

import com.example.demo.model.CartEntity;
import com.example.demo.model.UserEntity;
import com.example.demo.repository.UserEntityDAO;
import com.example.demo.service.CartService;
import com.example.demo.service.ParamService;
import com.example.demo.service.SessionService;
import com.example.demo.service.UserService;
import com.example.demo.service.impl.MailerServiceImpl;

@Controller
@RequestMapping("/account")
public class UserAccountController {
    @Autowired
    SessionService sessionService;
    @Autowired
    ParamService paramService;
    @Autowired
    UserService userService;
    @Autowired
    CartService cartService;
    @Autowired
    UserEntityDAO userEntityDAO;
    @Autowired
    MailerServiceImpl mailer;

    @Autowired

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
                return "redirect:/user/index";
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
        List<UserEntity> userEntity = userEntityDAO.findAll();
        int error = -1;
        for (UserEntity user : userEntity) {
            if (us.getUserName().equals(user.getUserName()) || us.getEmail().equals(user.getEmail())) {
                error++;
            }
        }
        if (result.hasErrors()) {
            return "user/register";
        } else if (!cfpw.equals(us.getPassWord())) {
            model.addAttribute("message_cf", "Xác nhận mật khẩu không khớp");
            return "user/register";
        } else if (error != -1) {
            model.addAttribute("message", "username hoặc email đã tồn tại !");
            return "user/register";
        }
        us.setUserRole(false);
        userService.save(us);
        CartEntity cart = new CartEntity();
        cart.setUser(us);
        cartService.save(cart);
        return "user/login";
    }

    @GetMapping("/logout")
    public String logout() {
        sessionService.remove("userSession");
        return "redirect:/user/index";
    }

    // /account/forgotPass
    @GetMapping("/forgotPass")
    public String forgotPass() {
        return "user/forgotPass";
    }

    @PostMapping("/forgotPass")
    public String forgotPass(Model model) {
        String email = paramService.getString("email", "");
        List<UserEntity> user = userEntityDAO.findByEmail(email);
        if (!user.isEmpty()) {
            for (UserEntity u : user) {
                if (u.getEmail().equals(email)) {
                    String toEmail = email;
                    String subject = "Your Random Password";
                    String pass = mailer.generateRandomPassword(8);
                    String body = "Your random password is: " + pass; // Adjust the length
                                                                      // as needed
                    mailer.send(toEmail, subject, body);

                    u.setPassWord(pass);
                    userEntityDAO.save(u);
                    return "user/login";
                }
            }
        } else {
            model.addAttribute("message", "email không tồn tại !");
            return "user/forgotPass";
        }

        System.out.println(email);
        return "user/forgotPass";
    }
}
