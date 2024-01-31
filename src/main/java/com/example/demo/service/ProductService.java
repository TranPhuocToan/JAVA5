package com.example.demo.service;

import java.util.List;
import java.util.Optional;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import com.example.demo.model.ProductEntity;

/**
 * ProductService
 */

public interface ProductService {
    // user
    Page<ProductEntity> findAll(Pageable pageable);

    Page<ProductEntity> findAllAndPrice(Double minPrice, Double maxPrice, Pageable pageable);

    Page<ProductEntity> findByCategoryId(Integer c, Pageable pageable);

    Page<ProductEntity> findByCategoryIdAndPrice(Integer categoryId, Double minPrice, Double maxPrice,
            Pageable pageable);

    Page<ProductEntity> findAllByProductNameLike(String productName, Pageable pageable);

    List<ProductEntity> findByBrandBrandId(Integer brandId);
    // user
}