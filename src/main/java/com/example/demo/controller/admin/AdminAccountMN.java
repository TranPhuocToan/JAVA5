package com.example.demo.controller.admin;


import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.ui.Model;

import com.example.demo.repository.UserEntityDAO;
import com.example.demo.model.UserEntity;


@Controller
@RequestMapping("/account")
public class AdminAccountMN {
    @Autowired
    UserEntityDAO UserEntityDAO;

    @RequestMapping("")
    public String ShowAccount(Model model) {
        List<UserEntity> UserEntity = UserEntityDAO.findAll();
        model.addAttribute("user", UserEntity);;
        return "/admin/account-management";
    }

    @RequestMapping("/form-account")
    public String ShowFA(Model model) {
        model.addAttribute("account", new UserEntity());
        return "/admin/form-account"; 
    }

    @RequestMapping("/edit/{id}")
    public String edit(Model model, @PathVariable("id") Integer id){
        UserEntity userEntity = UserEntityDAO.findById(id).get();
         UserEntity userName = UserEntityDAO.getByuserName(userEntity.getUserName());
       
        model.addAttribute("account", userEntity);
        return "/admin/form-account";
    }

    @RequestMapping("/update")
    public String update(){
        UserEntity userEntity = new UserEntity();
        Integer id = userEntity.getUserId();
        String username = userEntity.getUserName();
        String fullname = userEntity.getFullName();
        String email = userEntity.getEmail();
        System.out.println("username>> " + username);
        System.out.println("fullname>> " +fullname);
        System.out.println("email>> " +email);
        UserEntity user = new UserEntity();
        user.setEmail(email);
        user.setFullName(fullname);
        user.setUserName(username);
        UserEntityDAO.save(user);
        return "redirect:/account";

    }

    @RequestMapping("/detele/{id}")
    public String delete(@PathVariable("id") Integer id){
        UserEntityDAO.deleteById(id);
        return "redirect:/account";
    }
}
