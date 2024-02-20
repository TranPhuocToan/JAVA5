package com.example.demo.controller.admin;


import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.ui.Model;

import com.example.demo.repository.UserEntityDAO;
import com.example.demo.model.ShippingInfoEntity;
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
    public String update(@ModelAttribute("account") UserEntity account,Model model){
        UserEntity u = UserEntityDAO.findById(account.getUserId()).orElseThrow();
        u.setUserRole(account.getUserRole());
        UserEntityDAO.save(u);
        return "redirect:/account";
    }

    @RequestMapping("/detele/{id}")
    public String delete(@PathVariable("id") Integer id){
        UserEntityDAO.deleteById(id);
        return "redirect:/account";
    }
}
