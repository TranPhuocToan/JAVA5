package com.example.demo.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.example.demo.model.UserEntity;

/**
 * UserEntityDAO
 */
public interface UserEntityDAO extends JpaRepository<UserEntity, Integer> {

}
