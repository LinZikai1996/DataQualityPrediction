package com.dqp.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ShowDataController {

    private static final Logger logger = LoggerFactory.getLogger(ShowDataController.class);

    @RequestMapping(value = {"/showData.do"})
    public String index(){
        logger.info("========== Show Data ==========");
        return "show_data";
    }

}
