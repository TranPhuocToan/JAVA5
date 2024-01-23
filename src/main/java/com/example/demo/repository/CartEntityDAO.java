package com.example.demo.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.example.demo.model.CartEntity;

/**
 * CartEntityDAO
 */
public interface CartEntityDAO extends JpaRepository<CartEntity, Integer> {

}
