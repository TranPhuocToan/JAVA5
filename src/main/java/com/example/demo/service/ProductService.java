package com.example.demo.service;

import java.util.List;

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

    // List<ProductEntity> findByNameCategory(String name);

    // user
}