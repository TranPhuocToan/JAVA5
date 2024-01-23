package com.example.demo.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.example.demo.model.ProductDetailEntity;

/**
 * ProductDetailEntityDAO
 */
public interface ProductDetailEntityDAO extends JpaRepository<ProductDetailEntity, Integer> {

}
