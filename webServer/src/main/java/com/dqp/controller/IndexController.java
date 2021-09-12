package com.dqp.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class IndexController {

    private static final Logger logger = LoggerFactory.getLogger(IndexController.class);

    @RequestMapping(value = {"/","/index.do"})
    public String index(){
        logger.info("========== Server Start ==========");
        return "login";
    }

    @RequestMapping(value = {"/toIndex.do"})
    public String toIndex(){
        logger.info("back to index page");
        return "index";
    }
}
