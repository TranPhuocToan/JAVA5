package com.example.demo.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.example.demo.model.ProductEntity;

/**
 * ProductService
 */

public interface ProductService {

    List<ProductEntity> findAll();

    // List<ProductEntity> findByNameCategory(String name);
}