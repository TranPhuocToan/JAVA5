package com.example.demo.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.model.OrderDetailEntity;
import com.example.demo.repository.OrderDetailEntityDAO;
import com.example.demo.service.OrderDetailService;

/**
 * OrderDetailServiceImpl
 */
@Service
public class OrderDetailServiceImpl implements OrderDetailService {
    @Autowired
    OrderDetailEntityDAO orderDetailEntityDAO;

    @Override
    public OrderDetailEntity save(OrderDetailEntity entity) {
        return orderDetailEntityDAO.save(entity);
    }

}
