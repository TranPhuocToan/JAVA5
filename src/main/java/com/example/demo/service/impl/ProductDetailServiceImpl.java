package com.example.demo.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.model.ProductDetailEntity;
import com.example.demo.repository.ProductDetailEntityDAO;
import com.example.demo.service.ProductDetailService;

/**
 * ProductDetailServiceImpl
 */
@Service
public class ProductDetailServiceImpl implements ProductDetailService {
    @Autowired
    ProductDetailEntityDAO detailEntityDAO;

    // @Override
    // public ProductDetailEntity findByIdProduct(Integer id) {
    // // TODO Auto-generated method stub
    // throw new UnsupportedOperationException("Unimplemented method
    // 'findByIdProduct'");
    // }

}
