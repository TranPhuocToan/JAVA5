package com.example.demo.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.model.ProductEntity;
import com.example.demo.repository.ProductEntityDAO;
import com.example.demo.service.ProductService;

/**
 * ProductServiceImpl
 */
@Service
public class ProductServiceImpl implements ProductService {
    @Autowired
    ProductEntityDAO productEntityDAO;

    @Override
    public List<ProductEntity> findAll() {
        return productEntityDAO.findAll();
    }

    // @Override
    // public List<ProductEntity> findByNameCategory(String name) {
    // return productEntityDAO.findByCategoryName(name);
    // }

}
