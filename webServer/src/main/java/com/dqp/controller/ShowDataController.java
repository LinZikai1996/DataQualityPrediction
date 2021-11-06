package com.dqp.controller;

import lombok.extern.slf4j.Slf4j;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@Slf4j
public class ShowDataController {

    @RequestMapping(value = {"/showData.do"})
    public String index(){
        log.info("========== Show Data ==========");
        return "show_data";
    }

}
