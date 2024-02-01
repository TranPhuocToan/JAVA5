package com.example.demo.controller.user;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.demo.model.CartEntity;
import com.example.demo.model.CategoryEntity;
import com.example.demo.model.UserEntity;
import com.example.demo.repository.CategoryEntityDAO;
import com.example.demo.repository.ProductEntityDAO;
import com.example.demo.service.CartDetailService;
import com.example.demo.service.CartService;
import com.example.demo.service.CategoryService;
import com.example.demo.service.SessionService;

@Controller
@RequestMapping("/user")
public class UserHomeController {
    @Autowired
    SessionService sessionService;
    @Autowired
    CartDetailService cartDetailService;
    @Autowired
    CartService cartService;
    @Autowired
    CategoryEntityDAO categoryEntityDAO;
    @Autowired
    ProductEntityDAO productEntityDAO;

    @GetMapping("/index")
    public String index(Model model) {
        Map<String, Integer> mapCategory = new HashMap<String, Integer>();
        model.addAttribute("categories", categoryEntityDAO.findAll());
        for (CategoryEntity cate : categoryEntityDAO.findAll()) {
            int sl = productEntityDAO.findByCategory(cate).size();
            mapCategory.put(cate.getCategoryName(), sl);
        }
        if (sessionService.get("userSession") != null) {
            UserEntity userSession = sessionService.get("userSession");
            model.addAttribute("username", userSession.getFullName());
        }
        model.addAttribute("products", productEntityDAO.findAll());
        model.addAttribute("categorySl", mapCategory);
        model.addAttribute("cartCount", cartDetailService.countCartDetail(getCartCount()));
        return "user/index";
    }

    public Integer getCartCount() {
        CartEntity cart = new CartEntity();
        if (sessionService.get("userSession") != null) {
            UserEntity user = sessionService.get("userSession");
            cart = cartService.findByUserUserId(user.getUserId());
        }
        return cart.getCartId();
    }

    @GetMapping("/register")
    public String register() {
        return "user/register";
    }

}
