package com.example.demo.controller.user;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.demo.repository.ProductEntityDAO;
import com.example.demo.service.ProductService;

@Controller
@RequestMapping("/user")
public class UserProductController {
    @Autowired
    ProductService productService;
    @Autowired
    ProductEntityDAO productEntityDAO;

    @GetMapping("/shop")
    public String shop(Model model) {
        model.addAttribute("products", productEntityDAO.findAll());
        return "user/shop";
    }
}
