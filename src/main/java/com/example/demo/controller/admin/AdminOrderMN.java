package com.example.demo.controller.admin;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.demo.model.OrderEntity;
import com.example.demo.repository.OrderDetailEntityDAO;
import com.example.demo.repository.OrderEntityDAO;

@Controller
@RequestMapping("/order")
public class AdminOrderMN {
    @Autowired
    OrderEntityDAO orderEntityDAO;

    @Autowired
    OrderDetailEntityDAO orderDetailEntityDAO;

    @RequestMapping("")
    public String ShowOrder(Model model){
        List<OrderEntity> orderEntity = orderEntityDAO.findAll();
        model.addAttribute("order", orderEntity);
        return "/admin/order-management";
    }
}
