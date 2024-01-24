package com.example.demo.service;

import java.util.List;
import java.util.Optional;

import com.example.demo.model.CartDetailEntity;

/**
 * CartDetailService
 */
public interface CartDetailService {
    // user

    // tim cartdetail theo cartid
    List<CartDetailEntity> findCartCartId(Integer id);

    // tim cartdetail theo cartdetailid
    Optional<CartDetailEntity> findById(Integer id);

    // create cartdetail
    CartDetailEntity createCartDetail(CartDetailEntity entity);

    // update cartdetail
    CartDetailEntity updateCartDetail(CartDetailEntity entity);

    // user

}
