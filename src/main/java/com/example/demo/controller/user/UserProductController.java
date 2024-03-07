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

import com.example.demo.model.CartEntity;
import com.example.demo.model.ProductEntity;
import com.example.demo.model.UserEntity;
import com.example.demo.repository.CategoryEntityDAO;
import com.example.demo.repository.ProductEntityDAO;
import com.example.demo.service.CartDetailService;
import com.example.demo.service.CartService;
import com.example.demo.service.OrderDetailService;
import com.example.demo.service.OrderService;
import com.example.demo.service.OrderStatusService;
import com.example.demo.service.ParamService;
import com.example.demo.service.ProductService;
import com.example.demo.service.SessionService;
import com.example.demo.service.ShippingInfoService;

@Controller
@RequestMapping("/user")
public class UserProductController {
    @Autowired
    ProductEntityDAO productEntityDAO;
    @Autowired
    SessionService sessionService;
    @Autowired
    CartService cartService;
    @Autowired
    CartDetailService cartDetailService;
    @Autowired
    ShippingInfoService shippingInfoService;
    @Autowired
    OrderStatusService orderStatusService;
    @Autowired
    OrderService orderService;
    @Autowired
    OrderDetailService orderDetailService;
    @Autowired
    CategoryEntityDAO categoryEntityDAO;
    @Autowired
    ProductService productService;
    @Autowired
    ParamService paramService;

    // @GetMapping("/shop")
    // public String shop(@RequestParam("p") Optional<Integer> p,
    // @RequestParam("category") Optional<Integer> c,
    // Model model) {
    // model.addAttribute("categories", categoryEntityDAO.findAll());
    // Pageable pageable = PageRequest.of(p.orElse(0), 9);
    // if (c.isEmpty()) {
    // Page<ProductEntity> page = productEntityDAO.findAll(pageable);
    // model.addAttribute("categoryParam", "");
    // model.addAttribute("page", page);
    // } else {
    // Page<ProductEntity> pageCategory = productService.findByCategoryId(c,
    // pageable);
    // model.addAttribute("categoryParam", c.get());
    // model.addAttribute("page", pageCategory);
    // }
    // model.addAttribute("cartCount",
    // cartDetailService.countCartDetail(getCartCount()));

    // return "user/shop";
    // }
    @RequestMapping("/shop")
    public String shop(@RequestParam("p") Optional<Integer> p,
            @RequestParam("category") Optional<Integer> c,
            @RequestParam("minPrice") Optional<Double> minPrice,
            @RequestParam("maxPrice") Optional<Double> maxPrice,
            Model model) {
        System.out.println(minPrice + " " + maxPrice);
        model.addAttribute("categories", categoryEntityDAO.findAll());
        Pageable pageable = PageRequest.of(p.orElse(0), 9);
        if (c.isEmpty()) {
            // Không có category được chọn, tìm tất cả sản phẩm
            Page<ProductEntity> page;

            if (minPrice.isPresent() && maxPrice.isPresent()) {
                // Tìm theo khoảng giá nếu có
                page = productService.findAllAndPrice(minPrice.get(), maxPrice.get(), pageable);
            } else {
                // Nếu không có khoảng giá, tìm tất cả sản phẩm
                page = productEntityDAO.findAll(pageable);
            }

            model.addAttribute("categoryParam", "");
            model.addAttribute("page", page);
        } else {
            // Có category được chọn, tìm sản phẩm theo category
            Page<ProductEntity> pageCategory;
            if (minPrice.isPresent() && maxPrice.isPresent()) {
                // Tìm theo category và khoảng giá nếu có
                pageCategory = productService.findByCategoryIdAndPrice(c.get(), minPrice.get(), maxPrice.get(),
                        pageable);
            } else {
                // Nếu không có khoảng giá, tìm theo category
                pageCategory = productService.findByCategoryId(c.get(), pageable);
            }

            model.addAttribute("categoryParam", c.get());
            model.addAttribute("page", pageCategory);
        }
        if (sessionService.get("userSession") != null) {
            UserEntity userSession = sessionService.get("userSession");
            model.addAttribute("username", userSession.getFullName());
        }
        model.addAttribute("cartCount", cartDetailService.countCartDetail(getCartCount()));

        return "user/shop";
    }

    @RequestMapping("/shop/search")
    public String getMethodName(@RequestParam("keywords") Optional<String> kw,
            @RequestParam("p") Optional<Integer> p, Model model) {
        model.addAttribute("categories", categoryEntityDAO.findAll());
        String kwords = kw.orElse(sessionService.get("keywords"));
        System.out.println(kwords);
        sessionService.set("keywords", kwords);
        Pageable pageable = PageRequest.of(p.orElse(0), 9);
        Page<ProductEntity> page = productService.findAllByProductNameLike('%' + kwords + '%', pageable);
        model.addAttribute("page", page);
        return "user/shop";
    }

    public Integer getCartCount() {
        CartEntity cart = new CartEntity();
        if (sessionService.get("userSession") != null) {
            UserEntity user = sessionService.get("userSession");
            cart = cartService.findByUserUserId(user.getUserId());
        }
        return cart.getCartId();
    }
}
