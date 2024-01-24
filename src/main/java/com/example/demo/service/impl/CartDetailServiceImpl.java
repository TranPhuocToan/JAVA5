package com.example.demo.service.impl;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.model.CartDetailEntity;
import com.example.demo.repository.CartDetailEntityDAO;
import com.example.demo.service.CartDetailService;
import com.example.demo.service.CartService;

/**
 * CartDetailServiceImpl
 */
@Service
public class CartDetailServiceImpl implements CartDetailService {
    @Autowired
    CartDetailEntityDAO cartDetailEntityDAO;

    @Override
    public List<CartDetailEntity> findCartCartId(Integer id) {
        return cartDetailEntityDAO.findByCartCartId(id);
    }

    @Override
    public Optional<CartDetailEntity> findById(Integer id) {
        return cartDetailEntityDAO.findById(id);
    }

    @Override
    public CartDetailEntity createCartDetail(CartDetailEntity entity) {
        return cartDetailEntityDAO.save(entity);
    }

    @Override
    public CartDetailEntity updateCartDetail(CartDetailEntity entity) {
        return cartDetailEntityDAO.save(entity);
    }

}
