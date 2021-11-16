package com.dqp.controller;

import com.dqp.pojo.Report;
import com.dqp.service.ReportService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import java.math.BigInteger;
import java.util.List;
import java.util.Map;

import com.alibaba.fastjson.JSON;

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
    public ModelAndView toPersonalReport(){
        log.info("To Personal Report");
        ModelAndView modelAndView = new ModelAndView();
        BigInteger trade_total = reportService.getTotalDaily();

        List<Report> getPersonalTradeWeeklyList = reportService.getPersonalTradeWeekly();
        List<Report> getPersonalTradeExceptionWeeklyList = reportService.getPersonalTradeExceptionWeekly();
        modelAndView.addObject("personalTradeWeeklyList", JSON.toJSONString(getPersonalTradeWeeklyList));
        modelAndView.addObject("personalTradeExceptionWeeklyList", JSON.toJSONString(getPersonalTradeExceptionWeeklyList));
        modelAndView.addObject("tradeTotal", trade_total.toString());
        modelAndView.setViewName("personal_report");
        return modelAndView;
    }
}
