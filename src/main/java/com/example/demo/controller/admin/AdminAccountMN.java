// package com.example.demo.controller.admin;


// import java.util.List;


// import org.springframework.beans.factory.annotation.Autowired;
// import org.springframework.stereotype.Controller;
// import org.springframework.web.bind.annotation.PathVariable;
// import org.springframework.web.bind.annotation.RequestMapping;
// import org.springframework.ui.Model;

// import com.example.demo.repository.UserEntityDAO;
// import com.example.demo.model.UserEntity;

// @Controller
// @RequestMapping("/account")
// public class AdminAccountMN {
//     @Autowired
//     UserEntityDAO UserEntityDAO;

//     @RequestMapping("")
//     public String ShowAccount(Model model) {
//         List<UserEntity> UserEntity = UserEntityDAO.findAll();
//         model.addAttribute("user", UserEntity);;
//         return "/admin/account-management";
//     }


// }
