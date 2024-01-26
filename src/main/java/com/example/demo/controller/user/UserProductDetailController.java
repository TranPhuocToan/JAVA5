package com.example.demo.controller.user;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
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
import com.example.demo.model.ColorEntity;
import com.example.demo.model.ProductDetailEntity;
import com.example.demo.model.UserEntity;
import com.example.demo.service.CartDetailService;
import com.example.demo.service.CartService;
import com.example.demo.service.ParamService;
import com.example.demo.service.ProductDetailService;
import com.example.demo.service.SessionService;

@Controller
@RequestMapping("/user")
public class UserProductDetailController {
    @Autowired
    ParamService paramService;
    @Autowired
    ProductDetailService productDetailService;
    @Autowired
    CartDetailService cartDetailService;
    @Autowired
    CartService cartService;
    @Autowired
    SessionService sessionService;

    @RequestMapping("/detail/{id}")
    public String detail(@PathVariable("id") Integer id, Model model) {
        int count = 1;
        List<Map<String, Object>> colors = new ArrayList<>();
        List<Map<String, Object>> sizes = new ArrayList<>();
        for (ProductDetailEntity productDetail : productDetailService.findByProductId(id)) {
            if (count == 1) {
                model.addAttribute("detail_id", productDetail.getProduct().getProductId());
                model.addAttribute("detail_image", productDetail.getProduct().getProductImages());
                model.addAttribute("detail_name", productDetail.getProduct().getProductName());
                model.addAttribute("detail_price", productDetail.getProduct().getProductPrice());

            }
            Integer colorId = productDetail.getColor().getColorId();
            String colorName = productDetail.getColor().getColorName();

            if (!colors.stream().anyMatch(map -> map.containsKey("colorId") && map.get("colorId").equals(colorId))) {
                Map<String, Object> colorInfo = new HashMap<>();
                colorInfo.put("colorId", colorId);
                colorInfo.put("colorName", colorName);
                colors.add(colorInfo);
            }

            Integer sizeId = productDetail.getSize().getSizeId();
            String sizeName = productDetail.getSize().getSizeName();

            if (!sizes.stream().anyMatch(map -> map.containsKey("sizeId") &&
                    map.get("sizeId").equals(sizeId))) {
                Map<String, Object> sizeInfo = new HashMap<>();
                sizeInfo.put("sizeId", sizeId);
                sizeInfo.put("sizeName", sizeName);
                sizes.add(sizeInfo);
            }

            count++;
        }
        model.addAttribute("sizes", sizes);
        model.addAttribute("colors", colors);

        return "user/detail";
    }

    @PostMapping("/detailAdd")
    public String detail(Model model) {
        Integer size = paramService.getInt("size", 0);
        Integer color = paramService.getInt("color", 0);
        Integer pID = paramService.getInt("productId", 0);
        Integer qty = paramService.getInt("qty", 1);

        UserEntity user = sessionService.get("userSession");
        CartEntity cartEntity = cartService.findByUserUserId(user.getUserId());
        System.out.println("productDID " + pID + "size " + size + "color " + color + "Qty " + qty);
        ProductDetailEntity productD = productDetailService.findByColorColorIdAndSizeSizeIdAndProductProductId(color,
                size, pID);

        if (productD != null) {
            System.out.println("productID " + pID + "SL proD " + productD.getQuantity() + "size " + size + "color "
                    + color + "Qty " + qty);

            // tìm CartDetailEntity
            CartDetailEntity cartDetailEntity = cartDetailService
                    .findByProductDetialProductDetailIdAndCartCartId(productD.getProductDetailId(),
                            cartEntity.getCartId());

            if (cartDetailEntity != null) {
                // Nếu CartDetailEntity tồn tại, hãy cập nhật số lượng của nó
                cartDetailEntity.setQuantity(cartDetailEntity.getQuantity() + qty);
                cartDetailService.updateCartDetail(cartDetailEntity);

                // In thông tin cập nhật để xác minh
                System.out.println("Updated CartDetail ID: " + cartDetailEntity.getCartDetailId());
                System.out.println("Updated Quantity: " + cartDetailEntity.getQuantity());

            } else {
                // Nếu CartDetailEntity không tồn tại, hãy tạo một cái mới
                cartDetailEntity = new CartDetailEntity(null, qty, productD, cartEntity);
                cartDetailService.createCartDetail(cartDetailEntity);
            }
        }

        return "redirect:/user/detail/" + pID;
    }
}
