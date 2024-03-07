package com.example.demo.controller.admin;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/statistical")
public class AdminStatisticalMN {
    
    @RequestMapping("")
    public String ShowStati(){
        
        return "/admin/statistical";
    }
}
