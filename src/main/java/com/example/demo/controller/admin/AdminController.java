package com.example.demo.controller.admin;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.demo.model.OrderEntity;
import com.example.demo.repository.OrderEntityDAO;
import com.example.demo.repository.ProductEntityDAO;
import com.example.demo.repository.UserEntityDAO;

@Controller
@RequestMapping("/admin")
public class AdminController {

    @Autowired
    private UserEntityDAO UserEntityDAO;
    
    @Autowired
    private ProductEntityDAO ProductEntityDAODAO;
    
    @Autowired
    private OrderEntityDAO OrderEntityDAOrderDAO;

    @GetMapping("")
    public String showIndex(Model model) {
    	// OrderEntity orders = new OrderEntity();
        // long totalCustomers = UserEntityDAO.count();
        // long totalProducts = ProductEntityDAO.count();
        // long totalOrders = orderDAO.count();
        // int threshold = 10;  
        // long productsRunningLow = productDAO.countProductsRunningLow(threshold);
        // model.addAttribute("totalCustomers", totalCustomers);
        // model.addAttribute("totalProducts", totalProducts);
        // model.addAttribute("totalOrders", totalOrders);
        // model.addAttribute("productsRunningLow", productsRunningLow);
        
        // List<OrderEntity> items = OrderEntityDAO.findAll();
        // model.addAttribute("items", items);
        return "admin/index";
    }





























    // @GetMapping("/index")
    // public String ShowIndexAdmin() {
    //     return "admin/index";
        
    // }
    
    // @GetMapping("/account-management")
    // public String ShowAcc() {
    // 	return "admin/account-management";
    // }
    
    // @GetMapping("/order-management")
    // public String ShowOrder() {
    //     return "admin/order-management";
        
    // }
    
    // @GetMapping("/Color-management")
    // public String ShowColor() {
    //     return "admin/Color-management";
        
    // }

    // @GetMapping("/Size-management")
    // public String ShowSize() {
    //     return "admin/Size-management";
        
    // }

    // @GetMapping("/Brand-management")
    // public String ShowBrand() {
    //     return "admin/Brand-management";
        
    // }
    
    // @GetMapping("/product-management")
    // public String ShowPM() {
    // 	return "admin/product-management";
    // }
    
    // @GetMapping("/customer-management")
    // public String ShowCus() {
    // 	return "admin/customer-management";
    // }
    
    // @GetMapping("/discount-management")
    // public String ShowDisc() {
    // 	return "admin/discount-management";
    // }
    
    // @GetMapping("/form-account")
    // public String ShowFA() {
    // 	return "admin/form-account";
    // }
    
    // @GetMapping("/form-customer")
    // public String ShowFC() {
    // 	return "admin/form-customer";
    // }
    
    // @GetMapping("/form-discount")
    // public String ShowFD() {
    // 	return "admin/form-discount";
    // }
   
    // @GetMapping("/form-order")
    // public String ShowFO() {
    // 	return "admin/form-order";
    // }
    
    // @GetMapping("/form-color")
    // public String ShowFColor() {
    // 	return "admin/form-color";
    // }
    
    // @GetMapping("/form-size")
    // public String ShowFSize() {
    // 	return "admin/form-size";
    // }

    // @GetMapping("/form-brand")
    // public String ShowFBrand() {
    // 	return "admin/form-brand";
    // }

    // @GetMapping("/form-product")
    // public String ShowFP() {
    // 	return "admin/form-product";
    // }

    // @GetMapping("/statistical")
    // public String ShowStatic() {
    // 	return "admin/statistical";
    // }
    
}
