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
    
    @GetMapping("/order-management")
    public String ShowOrder() {
        return "admin/order-management";
        
    }
    
    @GetMapping("/Color-management")
    public String ShowColor() {
        return "admin/Color-management";
        
    }

    @GetMapping("/Size-management")
    public String ShowSize() {
        return "admin/Size-management";
        
    }

    @GetMapping("/Brand-management")
    public String ShowBrand() {
        return "admin/Brand-management";
        
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
   
    @GetMapping("/form-order")
    public String ShowFO() {
    	return "admin/form-order";
    }
    
    @GetMapping("/form-color")
    public String ShowFColor() {
    	return "admin/form-color";
    }
    
    @GetMapping("/form-size")
    public String ShowFSize() {
    	return "admin/form-size";
    }

    @GetMapping("/form-brand")
    public String ShowFBrand() {
    	return "admin/form-brand";
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
