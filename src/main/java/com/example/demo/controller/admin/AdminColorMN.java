package com.example.demo.controller.admin;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.demo.model.ColorEntity;
import com.example.demo.repository.ColorEntityDAO;

@Controller
@RequestMapping("/color")
public class AdminColorMN {
    @Autowired
    ColorEntityDAO colorEntityDAO;


    @RequestMapping("")
    public String ShowColor(Model model){
        List<ColorEntity> ColorEntity = colorEntityDAO.findAll();
        model.addAttribute("color", ColorEntity);
        return "/admin/Color-management";
    }


    @RequestMapping("/form-color")
    public String ShowFC(Model model){
        model.addAttribute("color", new ColorEntity());
        return "admin/form-color";
    }

    @RequestMapping("edit/{colorId}")
    public String edit(Model model, @PathVariable("colorId") Integer colorId){
        ColorEntity colorEntity = colorEntityDAO.findById(colorId).get();
        model.addAttribute("color", colorEntity);
        List<ColorEntity> colorEntity1 = colorEntityDAO.findAll();
        model.addAttribute("color1", colorEntity1);
        return "/admin/form-color";
    }

    @RequestMapping("/create")
    public String create(Model model, @ModelAttribute("color") ColorEntity colorEntity){
        colorEntityDAO.save(colorEntity);
        return "redirect:/color";
    }
}
