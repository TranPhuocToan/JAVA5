package com.example.demo.service;

import java.util.Optional;

import com.example.demo.model.OrderStatusEntity;
import com.example.demo.model.ShippingInfoEntity;

/**
 * OrderStatusService
 */
public interface OrderStatusService {
    // user
    Optional<OrderStatusEntity> findById(Integer id);
    // user
}