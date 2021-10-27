package com.dqp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ReportController {

    @RequestMapping("/toReportPage.do")
    public String toReportPage(){
        return "report";
    }
}
