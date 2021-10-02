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
                           @RequestParam(name="product") String product,
                           @RequestParam(name="originating_event") String originating_event,
                           @RequestParam(name="reporting_regime") String reporting_regime,
                           @RequestParam(name="usi_issuer") String usi_issuer,
                           @RequestParam(name="usi_value") String usi_value,
                           @RequestParam(name="uti_originator") String uti_originator
                        ){
        System.out.println("===== Submit Trade =====");
        System.out.println(primary_asset_class);
        System.out.println(product);
        System.out.println(originating_event);
        System.out.println(reporting_regime);
        System.out.println(usi_issuer);
        System.out.println(usi_value);
        System.out.println(uti_originator);
        return "/toIndex.do";
    }
}
