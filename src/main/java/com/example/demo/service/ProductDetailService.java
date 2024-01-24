package com.example.demo.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.example.demo.model.ProductDetailEntity;

/**
 * ProductDetailService
 */

public interface ProductDetailService {
    // user
    List<ProductDetailEntity> findByProductId(Integer id);

    ProductDetailEntity findByColorColorIdAndSizeSizeIdAndProductProductId(Integer colorId, Integer sizeId,
            Integer productId);

    // user
}