package com.example.demo.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.example.demo.model.OrderDetailEntity;

/**
 * OrderDetailEntityDAO
 */
public interface OrderDetailEntityDAO extends JpaRepository<OrderDetailEntity, Integer> {

}
