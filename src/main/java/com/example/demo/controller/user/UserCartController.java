package com.example.demo.controller.user;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.demo.model.CartDetailEntity;
import com.example.demo.model.CartEntity;
import com.example.demo.model.UserEntity;
import com.example.demo.repository.CartDetailEntityDAO;
import com.example.demo.service.CartDetailService;
import com.example.demo.service.CartService;
import com.example.demo.service.SessionService;

/**
 * UserCartController
 */
@Controller
@RequestMapping("/user")
public class UserCartController {
    @Autowired
    SessionService sessionService;
    @Autowired
    CartService cartService;
    @Autowired
    CartDetailService cartDetailService;
    @Autowired
    CartDetailEntityDAO cartDetailEntityDAO;

    @RequestMapping("/cart")
    public String cart(Model model) {
        if (sessionService.get("userSession") != null) {
            UserEntity user = sessionService.get("userSession");
            CartEntity cart = cartService.findByUserUserId(user.getUserId());
            List<CartDetailEntity> cartDetail = cartDetailService.findCartCartId(cart.getCartId());
            model.addAttribute("cartDetail", cartDetail);
            double Amount = 0;
            for (CartDetailEntity cartD : cartDetail) {
                Amount += cartD.getQuantity() * cartD.getProductDetial().getProduct().getProductPrice();
            }
            model.addAttribute("amount", Amount);
        }
        return "user/cart";
    }

    @PostMapping("/cartUpdate/{id}")
    public String cartUpdate(@PathVariable("id") Integer id, @RequestParam("qty") Integer qty) {
        // Lấy Optional<CartDetailEntity> từ ID
        Optional<CartDetailEntity> optionalCartDetail = cartDetailService.findById(id);

        // Kiểm tra xem cartDetail có tồn tại không
        if (optionalCartDetail.isPresent()) {
            CartDetailEntity cartDetail = optionalCartDetail.get();

            // Cập nhật thông tin của cartDetail
            // cartDetail.setCartDetailId(id);
            cartDetail.setQuantity(qty);

            // Lưu cartDetail sau khi cập nhật
            cartDetailService.updateCartDetail(cartDetail);

            // // In ra thông tin kiểm tra (có thể loại bỏ khi triển khai thực tế)
            // System.out.println("Updated CartDetail ID: " + cartDetail.getCartDetailId());
            // System.out.println("Updated Quantity: " + cartDetail.getQuantity());
        } else {
            // Xử lý trường hợp cartDetail không tồn tại
            System.out.println("CartDetail with ID " + id + " not found.");
        }
        return "redirect:/user/cart";
    }

    @GetMapping("/cartAdd")
    public String cartAdd(@RequestParam String param) {
        return new String();
    }

}