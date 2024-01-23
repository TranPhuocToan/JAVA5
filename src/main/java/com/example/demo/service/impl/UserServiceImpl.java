package com.example.demo.service.impl;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.model.UserEntity;
import com.example.demo.repository.UserEntityDAO;
import com.example.demo.service.UserService;

/**
 * UserServiceImpl
 */
@Service
public class UserServiceImpl implements UserService {
    @Autowired
    UserEntityDAO userEntityDAO;

    @Override
    public List<UserEntity> findByUsername(String username) {
        return userEntityDAO.findByUserName(username);
    }

}
