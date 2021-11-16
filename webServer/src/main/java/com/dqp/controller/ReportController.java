package com.dqp.controller;

import com.alibaba.fastjson.JSON;
import com.dqp.service.ReportService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
@Slf4j
public class ReportController {

    private final ReportService reportService;

    public ReportController(ReportService reportService) {
        this.reportService = reportService;
    }

    @RequestMapping("/toTradeReportPage.do")
    public String toReportPage(){
        log.info("To trade report page");
        return "trade_report";
    }

    @RequestMapping("/toPersonalReport.do")
    public ModelAndView toPersonalReport(@RequestParam(name="user") String userId){
        log.info("To Personal Report");
        ModelAndView modelAndView = new ModelAndView();

        // Daily report
        modelAndView.addObject("personalTradeTotalDaily", reportService.getPersonalTotalDaily(userId).toString());
        modelAndView.addObject("personalTradeExceptionDaily", reportService.getPersonalExceptionDaily(userId).toString());

        // Weekly report
        modelAndView.addObject("personalTradeTotalWeeklyList", JSON.toJSONString(reportService.getPersonalTradeWeekly()));
        modelAndView.addObject("personalTradeExceptionWeeklyList", JSON.toJSONString(reportService.getPersonalTradeExceptionWeekly()));


        modelAndView.setViewName("personal_report");
        return modelAndView;
    }
}
