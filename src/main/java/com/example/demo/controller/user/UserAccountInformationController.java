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
import com.example.demo.repository.UserEntityDAO;
import com.example.demo.service.CartDetailService;
import com.example.demo.service.CartService;
import com.example.demo.service.OrderDetailService;
import com.example.demo.service.OrderService;
import com.example.demo.service.ParamService;
import com.example.demo.service.SessionService;
import com.example.demo.service.ShippingInfoService;

import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;

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
    @Autowired
    ParamService paramService;
    @Autowired
    UserEntityDAO userEntityDAO;

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

    @RequestMapping("/accountInfo")
    public String accountInfo(Model model) {
        UserEntity userSession = null;
        if (sessionService.get("userSession") != null) {
            userSession = sessionService.get("userSession");
            model.addAttribute("username", userSession.getFullName());
        }
        model.addAttribute("categories", categoryEntityDAO.findAll());
        model.addAttribute("cartCount", cartDetailService.countCartDetail(getCartCount()));
        model.addAttribute("user", userSession);
        return "user/accountInfo";
    }

    @PostMapping("/accountInfoPost")
    public String accountInfoPost(Model model) {
        String fullName = paramService.getString("fullname", "");
        String email = paramService.getString("email", "");
        UserEntity u = sessionService.get("userSession");
        if (fullName.equals("") || email.equals("")) {
            model.addAttribute("errorMessage", "Nhập đầy đủ thông tin !");
            return "user/accountInfo";
        }
        try {
            int number = Integer.parseInt(fullName);
            model.addAttribute("errorMessage", "FullName phải chứa chữ và số !");
            return "user/accountInfo";
        } catch (Exception e) {

        }
        List<UserEntity> user = userEntityDAO.findAll();
        for (UserEntity userEntity : user) {
            if (userEntity.getEmail().equals(email) && !userEntity.getUserId().equals(u.getUserId())) {
                model.addAttribute("errorMessage", "Email đã tồn tại !");
                return "forward:/user/accountInfo";
            }
        }
        u.setFullName(fullName);
        u.setEmail(email);
        userEntityDAO.save(u);
        model.addAttribute("successMessage", "Đổi thông tin thành công !");
        return "forward:/user/accountInfo";
    }

    @RequestMapping("/accountChPassword")
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