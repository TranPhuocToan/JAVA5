package com.example.demo.service;

import java.util.List;
import java.util.Optional;

import com.example.demo.model.CartEntity;

/**
 * CartService
 */
public interface CartService {
    // user

    // tim cart theo userid
    CartEntity findByUserUserId(Integer id);

    // tạo cart cho user
    CartEntity save(CartEntity entity);
    // user
}
