package com.dqp.controller;

import com.dqp.service.TradeService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class TradeController {

    private static Logger logger = LoggerFactory.getLogger(TradeController.class);

    @Autowired
    TradeService tradeService;

    @RequestMapping(value ="/tradeSubmit.do")
    public String newTrade(@RequestParam(name="primary_asset_class") String primary_asset_class,
                           @RequestParam(name="prodict_value") String prodict_value
                        ){
        System.out.println("===== Submit Trade =====");
        System.out.println(primary_asset_class);
        System.out.println(prodict_value);
        return "index";
    }
}
