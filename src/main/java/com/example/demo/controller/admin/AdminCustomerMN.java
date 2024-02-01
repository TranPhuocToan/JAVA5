package com.example.demo.controller.admin;


import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.demo.model.ShippingInfoEntity;
import com.example.demo.repository.ShippingInfoEntityDAO;

import org.springframework.ui.Model;




@Controller
@RequestMapping("/ShippingInfo")
public class AdminCustomerMN {
    @Autowired
    ShippingInfoEntityDAO shippingInfoEntityDAO;

    @RequestMapping("")
    public String ShowUser(Model model){
        List<ShippingInfoEntity> ShippingInfoEntity = shippingInfoEntityDAO.findAll();
        model.addAttribute("ShippingInfo", ShippingInfoEntity);
        return "/admin/customer-management";
    }
}
