package com.example.demo.service;

import java.util.List;
import java.util.Optional;

import org.springframework.stereotype.Service;

import com.example.demo.model.UserEntity;

/**
 * UserService
 */
public interface UserService {
    // ----------Start User ----------
    public List<UserEntity> findByUsername(String username);

    public UserEntity save(UserEntity entity);
    // ----------End User ----------

    public UserEntity update(UserEntity entity);
    // ----------End User ----------
}