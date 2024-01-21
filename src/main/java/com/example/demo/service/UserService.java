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
    List<UserEntity> findByUsername(String username);
    // ----------End User ----------
}