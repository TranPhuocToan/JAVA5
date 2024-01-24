package com.example.demo.repository;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.example.demo.model.CartEntity;
import java.util.List;

/**
 * CartEntityDAO
 */
public interface CartEntityDAO extends JpaRepository<CartEntity, Integer> {
    CartEntity findByUserUserId(Integer id);
}
