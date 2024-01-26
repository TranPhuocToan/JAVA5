package com.example.demo.service;

import java.util.List;

import com.example.demo.model.OrderEntity;

/**
 * OrderService
 */
public interface OrderService {
    // user

    // tim order theo userid
    List<OrderEntity> findByUserUserId(Integer userId);

    OrderEntity save(OrderEntity order);
    // user

}