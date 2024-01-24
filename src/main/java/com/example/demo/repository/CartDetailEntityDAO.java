package com.example.demo.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.example.demo.model.CartDetailEntity;
import java.util.List;

/**
 * CartDetailEntityDAO
 */
public interface CartDetailEntityDAO extends JpaRepository<CartDetailEntity, Integer> {
    // user

    // tim cartdetail theo cartid
    List<CartDetailEntity> findByCartCartId(Integer id);

    // user
}
