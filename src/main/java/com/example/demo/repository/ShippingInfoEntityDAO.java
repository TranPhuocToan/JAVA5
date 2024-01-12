package com.example.demo.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.example.demo.model.ShippingInfoEntity;

/**
 * ShippingInfoEntityDAO
 */
public interface ShippingInfoEntityDAO extends JpaRepository<ShippingInfoEntity, Integer> {

}