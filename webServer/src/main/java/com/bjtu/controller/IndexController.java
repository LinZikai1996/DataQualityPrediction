package com.bjtu.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class IndexController {
    @RequestMapping(value = {"/","/index.do"})
    public String index(){
        System.out.println("===== Server start =====");
        return "login";
    }

    @RequestMapping(value = {"/toIndexWithoutUser.do"})
    public String toIndexWithoutUser(){
        System.out.println("===== Server start =====");
        return "index";
    }
}
