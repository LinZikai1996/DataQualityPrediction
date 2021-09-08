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
    public String newTrade(@RequestParam(name="trade_type") String trade_type
                        ){
        System.out.println("===== Submit Trade =====");
        System.out.println(trade_type);
        return "index";
    }
}
