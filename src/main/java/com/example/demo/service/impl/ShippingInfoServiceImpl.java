package com.example.demo.service.impl;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.model.ShippingInfoEntity;
import com.example.demo.repository.ShippingInfoEntityDAO;
import com.example.demo.service.ShippingInfoService;

/**
 * ShippingInfoServiceImpl
 */
@Service
public class ShippingInfoServiceImpl implements ShippingInfoService {
    @Autowired
    ShippingInfoEntityDAO shippingInfoEntityDAO;

    @Override
    public ShippingInfoEntity save(ShippingInfoEntity entity) {
        return shippingInfoEntityDAO.save(entity);
    }

}
