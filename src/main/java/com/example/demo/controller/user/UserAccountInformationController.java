package com.example.demo.controller.user;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.demo.model.CartEntity;
import com.example.demo.model.OrderDetailEntity;
import com.example.demo.model.OrderEntity;
import com.example.demo.model.ShippingInfoEntity;
import com.example.demo.model.UserEntity;
import com.example.demo.repository.CategoryEntityDAO;
import com.example.demo.service.CartDetailService;
import com.example.demo.service.CartService;
import com.example.demo.service.OrderDetailService;
import com.example.demo.service.OrderService;
import com.example.demo.service.SessionService;
import com.example.demo.service.ShippingInfoService;

import org.springframework.web.bind.annotation.RequestParam;

/**
 * UserAccountInformationController
 */
@Controller
@RequestMapping("/user")
public class UserAccountInformationController {
    @Autowired
    OrderService orderService;
    @Autowired
    SessionService sessionService;
    @Autowired
    CartService cartService;
    @Autowired
    CartDetailService cartDetailService;
    @Autowired
    CategoryEntityDAO categoryEntityDAO;
    @Autowired
    OrderDetailService orderDetailService;
    @Autowired
    ShippingInfoService shippingInfoService;

    @GetMapping("/accountOrder")
    public String accountOrder(Model model) {
        if (sessionService.get("userSession") != null) {
            UserEntity userSession = sessionService.get("userSession");
            model.addAttribute("username", userSession.getFullName());
        }
        model.addAttribute("categories", categoryEntityDAO.findAll());
        UserEntity user = sessionService.get("userSession");
        model.addAttribute("acOrders", orderService.findByUserUserId(user.getUserId()));
        model.addAttribute("cartCount", cartDetailService.countCartDetail(getCartCount()));
        return "user/accountOrder";
    }

    @GetMapping("/accountOrderDL/{id}")
    public String accountOrderDL(@PathVariable("id") Integer id, Model model) {
        List<OrderDetailEntity> orderDetails = orderDetailService.findByOrderOrderId(id);
        for (OrderDetailEntity orderDt : orderDetails) {
            orderDetailService.delete(orderDt);
        }
        List<ShippingInfoEntity> shippingInfo = shippingInfoService.findByOrderOrderId(id);
        for (ShippingInfoEntity shipIF : shippingInfo) {
            shippingInfoService.delete(shipIF);
        }
        OrderEntity order = orderService.findByOrderId(id);
        orderService.delete(order);
        return "redirect:/user/accountOrder";
    }

    public void accountOrderDetail(@PathVariable("id") Integer id, Model model) {
        System.out.println(id);

    }

    @GetMapping("/accountInfo")
    public String accountInfo(Model model) {
        if (sessionService.get("userSession") != null) {
            UserEntity userSession = sessionService.get("userSession");
            model.addAttribute("username", userSession.getFullName());
        }
        model.addAttribute("categories", categoryEntityDAO.findAll());
        model.addAttribute("cartCount", cartDetailService.countCartDetail(getCartCount()));
        return "user/accountInfo";
    }

    @GetMapping("/accountChPassword")
    public String accountChPassword(Model model) {
        if (sessionService.get("userSession") != null) {
            UserEntity userSession = sessionService.get("userSession");
            model.addAttribute("username", userSession.getFullName());
        }
        model.addAttribute("categories", categoryEntityDAO.findAll());
        model.addAttribute("cartCount", cartDetailService.countCartDetail(getCartCount()));
        return "user/accountChPassword";
    }

    @GetMapping("/accountOrderDetails/{id}")
    public String accountOrderDetails(@PathVariable("id") Integer id, Model model) {
        if (sessionService.get("userSession") != null) {
            UserEntity userSession = sessionService.get("userSession");
            model.addAttribute("username", userSession.getFullName());
        }
        List<OrderDetailEntity> orderDetail = orderDetailService.findByOrderOrderId(id);
        double total = 0;
        for (OrderDetailEntity orderDetailEntity : orderDetail) {
            total += orderDetailEntity.getPrice() * orderDetailEntity.getQuantity();
        }
        model.addAttribute("totalPrice", total);
        model.addAttribute("orderDetail", orderDetailService.findByOrderOrderId(id));
        model.addAttribute("categories", categoryEntityDAO.findAll());
        model.addAttribute("cartCount", cartDetailService.countCartDetail(getCartCount()));
        return "user/accountOrderDetail";
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