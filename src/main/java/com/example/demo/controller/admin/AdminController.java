package com.example.demo.controller.admin;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/admin")
public class AdminController {
    @GetMapping("/index")
    public String ShowIndexAdmin() {
        return "admin/index";
        
    }
    
    @GetMapping("/account-management")
    public String ShowAcc() {
    	return "admin/account-management";
    }
    
    @GetMapping("/oder-management")
    public String ShowOrder() {
        return "admin/oder-management";
        
    }
    
    
    @GetMapping("/product-management")
    public String ShowPM() {
    	return "admin/product-management";
    }
    
    @GetMapping("/customer-management")
    public String ShowCus() {
    	return "admin/customer-management";
    }
    
    @GetMapping("/discount-management")
    public String ShowDisc() {
    	return "admin/discount-management";
    }
    
    @GetMapping("/form-account")
    public String ShowFA() {
    	return "admin/form-account";
    }
    
    @GetMapping("/form-customer")
    public String ShowFC() {
    	return "admin/form-customer";
    }
    
    @GetMapping("/form-discount")
    public String ShowFD() {
    	return "admin/form-discount";
    }
   
    @GetMapping("/form-oder")
    public String ShowFO() {
    	return "admin/form-oder";
    }
    
    @GetMapping("/form-product")
    public String ShowFP() {
    	return "admin/form-product";
    }
    
    @GetMapping("/statistical")
    public String ShowStatic() {
    	return "admin/statistical";
    }
    
}
