package com.bjtu.controller;

import com.bjtu.service.TradeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class TradeController {

    @Autowired
    TradeService tradeService;

    @RequestMapping(value ="/tradeSubmit.do")
    public String newTrade(@RequestParam(name="Parameter_1") String Parameter_1,
                           @RequestParam(name="Parameter_2") String Parameter_2,
                           @RequestParam(name="Parameter_3") String Parameter_3,
                           @RequestParam(name="Parameter_4") String Parameter_4
                        ){
        System.out.println("===== Submit Trade =====");
        return "index";
    }
}
