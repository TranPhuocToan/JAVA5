package com.example.demo.controller.user;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.demo.model.ColorEntity;
import com.example.demo.model.ProductDetailEntity;
import com.example.demo.service.CartDetailService;
import com.example.demo.service.ParamService;
import com.example.demo.service.ProductDetailService;

@Controller
@RequestMapping("/user")
public class UserProductDetailController {
    @Autowired
    ParamService paramService;
    @Autowired
    ProductDetailService productDetailService;
    @Autowired
    CartDetailService cartDetailService;

    @GetMapping("/detail/{id}")
    public String detail(@PathVariable("id") Integer id, Model model) {
        int count = 1;
        List<Map<String, Object>> colors = new ArrayList<>();
        List<Map<String, Object>> sizes = new ArrayList<>();
        for (ProductDetailEntity productDetail : productDetailService.findByProductId(id)) {
            if (count == 1) {
                model.addAttribute("detail_id", productDetail.getProductDetailId());
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
    public String detail() {
        Integer size = paramService.getInt("size", 0);
        Integer color = paramService.getInt("color", 0);
        Integer pDId = paramService.getInt("productDId", 0);
        Integer qty = paramService.getInt("qty", 1);
        ProductDetailEntity productD = productDetailService
                .findByColorColorIdAndSizeSizeIdAndProductProductId(color, size, pDId);
        // System.out.println(productD.getProductDetailId());
        return "user/detail";
    }
}
