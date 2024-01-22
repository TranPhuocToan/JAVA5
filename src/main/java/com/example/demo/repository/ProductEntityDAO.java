package com.example.demo.repository;

import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;

import com.example.demo.model.ProductEntity;

/**
 * ProductEntityDAO
 */

public interface ProductEntityDAO extends JpaRepository<ProductEntity, Integer> {
    // user
    Page<ProductEntity> findAll(Pageable pageable);
    // List<ProductEntity> findByCategoryName(String name);

    // user
}
