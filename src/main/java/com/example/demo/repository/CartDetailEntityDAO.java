package com.example.demo.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.example.demo.model.CartDetailEntity;

/**
 * CartDetailEntityDAO
 */
public interface CartDetailEntityDAO extends JpaRepository<CartDetailEntity, Integer> {

}
