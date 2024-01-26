package com.example.demo.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.example.demo.model.OrderEntity;

/**
 * OrderEntityDAO
 */
public interface OrderEntityDAO extends JpaRepository<OrderEntity, Integer> {
    // user
    List<OrderEntity> findByUserUserId(Integer userId);
    // user
}
