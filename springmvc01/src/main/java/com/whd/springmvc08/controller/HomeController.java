package com.whd.springmvc08.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(path = "/home")
public class HomeController {
    @RequestMapping(path = "/index")
    public String index(Model model){
        model.addAttribute("message","Hello Spring MVC!");
        return "index";
    }
}
