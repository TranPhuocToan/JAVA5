package com.example.demo.controller.user;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.demo.model.ProductEntity;
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
    public String shop(@RequestParam("p") Optional<Integer> p, Model model) {
        Pageable pageable = PageRequest.of(p.orElse(0), 9);
        Page<ProductEntity> page = productEntityDAO.findAll(pageable);
        model.addAttribute("page", page);
        return "user/shop";
    }
}