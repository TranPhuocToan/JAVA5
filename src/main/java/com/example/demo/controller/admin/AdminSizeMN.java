package com.example.demo.controller.admin;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.demo.model.SizeEntity;
import com.example.demo.repository.SizeEntityDAO;

@Controller
@RequestMapping("/size")
public class AdminSizeMN {
    @Autowired
    SizeEntityDAO sizeEntityDAO;


    @RequestMapping("")
    public String ShowSize(Model model){
        List<SizeEntity> SizeEntity = sizeEntityDAO.findAll();
        model.addAttribute("size", SizeEntity);
        return "/admin/Size-management";
    }

    @RequestMapping("/form-size")
    public String showFS(Model model){
        model.addAttribute("size", new SizeEntity());
        return "admin/form-size";
    }

    @RequestMapping("/edit/{sizeId}")
    public String edit(Model model, @PathVariable("sizeId") Integer sizeId){
        SizeEntity SizeEntity = sizeEntityDAO.findById(sizeId).get();
        model.addAttribute("size", SizeEntity);
        List<SizeEntity> SizeEntity1 = sizeEntityDAO.findAll();
        model.addAttribute("size1", SizeEntity1);
        return "/admin/form-size";
    }

    @RequestMapping("/create")
    public String create(Model model, @ModelAttribute("size") SizeEntity sizeEntity){
        sizeEntityDAO.save(sizeEntity);
        return "redirect:/size";
    }
}
