package com.example.demo.service.impl;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
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
    public Page<ProductEntity> findAll(Pageable pageable) {
        return productEntityDAO.findAll(pageable);
    }

    @Override
    public Page<ProductEntity> findAllAndPrice(Double minPrice, Double maxPrice, Pageable pageable) {
        return productEntityDAO.findByProductPriceBetween(minPrice, maxPrice, pageable);
    }

    @Override
    public Page<ProductEntity> findByCategoryId(Integer categoryId, Pageable pageable) {
        return productEntityDAO.findByCategoryCategoryId(categoryId, pageable);
    }

    @Override
    public Page<ProductEntity> findByCategoryIdAndPrice(Integer categoryId, Double minPrice, Double maxPrice,
            Pageable pageable) {
        return productEntityDAO.findByCategoryCategoryIdAndProductPriceBetween(categoryId, minPrice, maxPrice,
                pageable);
    }

    @Override
    public Page<ProductEntity> findAllByProductNameLike(String productName, Pageable pageable) {
        return productEntityDAO.findAllByProductNameLike(productName, pageable);
    }

    @Override
    public List<ProductEntity> findByBrandBrandId(Integer brandId) {
        return productEntityDAO.findByBrandBrandId(brandId);
    }

    // @Override
    // public List<ProductEntity> findByNameCategory(String name) {
    // return productEntityDAO.findByCategoryName(name);
    // }

}
