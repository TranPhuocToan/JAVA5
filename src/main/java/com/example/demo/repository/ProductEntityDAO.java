package com.example.demo.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.example.demo.model.ProductEntity;

/**
 * ProductEntityDAO
 */
public interface ProductEntityDAO extends JpaRepository<ProductEntity, Integer> {

}
