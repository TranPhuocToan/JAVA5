package com.example.demo.controller.user;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.demo.model.CartDetailEntity;
import com.example.demo.model.CartEntity;
import com.example.demo.model.OrderDetailEntity;
import com.example.demo.model.OrderEntity;
import com.example.demo.model.OrderStatusEntity;
import com.example.demo.model.ProductDetailEntity;
import com.example.demo.model.ProductEntity;
import com.example.demo.model.ShippingInfoEntity;
import com.example.demo.model.UserEntity;
import com.example.demo.service.CartDetailService;
import com.example.demo.service.CartService;
import com.example.demo.service.OrderDetailService;
import com.example.demo.service.OrderService;
import com.example.demo.service.OrderStatusService;
import com.example.demo.service.SessionService;
import com.example.demo.service.ShippingInfoService;

@Controller
@RequestMapping("/user")
public class UserOrderController {
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

    @GetMapping("/order")
    public String order(@ModelAttribute("shippingInfo") ShippingInfoEntity shippingInfo, Model model) {
        UserEntity user = sessionService.get("userSession");
        CartEntity cart = cartService.findByUserUserId(user.getUserId());
        List<CartDetailEntity> cartDetail = cartDetailService.findCartCartId(cart.getCartId());
        model.addAttribute("cartDetail", cartDetail);
        double Amount = 0;
        for (CartDetailEntity cartD : cartDetail) {
            Amount += cartD.getQuantity() * cartD.getProductDetial().getProduct().getProductPrice();
        }
        model.addAttribute("amount", Amount);
        return "user/order";
    }

    @PostMapping("/order/add")
    public String orderAdd(@Validated @ModelAttribute("shippingInfo") ShippingInfoEntity shippingInfo,
            BindingResult result, Model model) {
        UserEntity user = sessionService.get("userSession");
        CartEntity cart = cartService.findByUserUserId(user.getUserId());
        List<CartDetailEntity> cartDetail = cartDetailService.findCartCartId(cart.getCartId());
        model.addAttribute("cartDetail", cartDetail);
        double Amount = 0;
        for (CartDetailEntity cartD : cartDetail) {
            Amount += cartD.getQuantity() * cartD.getProductDetial().getProduct().getProductPrice();
        }
        model.addAttribute("amount", Amount);
        if (result.hasErrors()) {
            return "user/order";
        } else {
            // UserEntity user = sessionService.get("userSession");
            // CartEntity cart = cartService.findByUserUserId(user.getUserId());
            // List<CartDetailEntity> cartDetail =
            // cartDetailService.findCartCartId(cart.getCartId());
            // model.addAttribute("cartDetail", cartDetail);
            // double Amount = 0;
            // for (CartDetailEntity cartD : cartDetail) {
            // Amount += cartD.getQuantity() *
            // cartD.getProductDetial().getProduct().getProductPrice();
            // }
            Optional<OrderStatusEntity> orderStatus = orderStatusService.findById(1);
            OrderEntity order = new OrderEntity(null, new Date(), Amount + 20000, user, orderStatus.get(), null, null);
            orderService.save(order);

            shippingInfo.setOrder(order);
            shippingInfoService.save(shippingInfo);

            for (CartDetailEntity cartitem : cartDetail) {
                OrderDetailEntity orderDetailEntity = new OrderDetailEntity(null, cartitem.getQuantity(),
                        cartitem.getQuantity() * cartitem.getProductDetial().getProduct().getProductPrice(), order,
                        cartitem.getProductDetial());
                orderDetailService.save(orderDetailEntity);
            }

            for (CartDetailEntity cartitem : cartDetail) {
                cartDetailService.deleteCartDetail(cartitem);
            }
        }
        return "redirect:/user/index";
    }
}
