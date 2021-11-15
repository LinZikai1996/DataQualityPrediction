package com.dqp.controller;

import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@Slf4j
public class IndexController {

    @RequestMapping(value = {"/","/index.do"})
    public String index(){
        return "login";
    }

    @RequestMapping(value = {"/toIndex.do"})
    public String toIndex(){
        log.info("back to index page");
        return "index";
    }
}
