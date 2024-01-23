package com.example.demo.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.example.demo.model.OrderStatusEntity;

/**
 * OrderStatusEntityDAO
 */
public interface OrderStatusEntityDAO extends JpaRepository<OrderStatusEntity, Integer> {

}
