package com.example.demo.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.example.demo.model.CartDetailEntity;
import java.util.List;
import java.util.Optional;

/**
 * CartDetailEntityDAO
 */
public interface CartDetailEntityDAO extends JpaRepository<CartDetailEntity, Integer> {
    // user

    // tim cartdetail theo cartid
    List<CartDetailEntity> findByCartCartId(Integer id);

    // tim cartdetail theo productDetailid
    CartDetailEntity findByProductDetialProductDetailIdAndCartCartId(Integer productDetailId, Integer cartCartId);

    // user
}
