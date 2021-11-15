package com.dqp.controller;

import com.dqp.pojo.Trade;
import com.dqp.service.TradeService;
import com.dqp.util.CreateTradeId;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import java.sql.Date;
import java.text.SimpleDateFormat;
import java.util.List;

import static com.dqp.util.GetSubmittedValue.getValue;

@Controller
@Slf4j
public class TradeController {

    private final TradeService tradeService;

    public TradeController(TradeService tradeService) {
        this.tradeService = tradeService;
    }

    @RequestMapping(value ="/tradeSubmit.do")
    public ModelAndView newTrade(@RequestParam(name="primary_asset_class") String primary_asset_class,
                           @RequestParam(name="product") String product,
                           @RequestParam(name="originating_event") String originating_event,
                           @RequestParam(name="reporting_regime") String reporting_regime,
                           @RequestParam(name="usi_issuer") String usi_issuer,
                           @RequestParam(name="usi_value") String usi_value,
                           @RequestParam(name="uti_originator") String uti_originator,
                           @RequestParam(name="outgoing") String outgoing,
                           @RequestParam(name="has_ack_nack") String has_ack_nack,
                           @RequestParam(name="tr_determined_rep_role") String tr_determined_rep_role,
                           @RequestParam(name="intent_to_clear") String intent_to_clear,
                           @RequestParam(name="execution_venue") String execution_venue,
                           @RequestParam(name="system_trade_source") String system_trade_source,
                           @RequestParam(name="notional_ccy_1") String notional_ccy_1,
                           @RequestParam(name="notional_ccy_2") String notional_ccy_2,
                           @RequestParam(name="quantity") String quantity,
                           @RequestParam(name="net_amount") String net_amount,
                           @RequestParam(name="price") String price,
                           @RequestParam(name="option_type") String option_type,
                           @RequestParam(name="strike_price") String strike_price,
                           @RequestParam(name="option_exercise_style") String option_exercise_style,
                           @RequestParam(name="delivery_type") String delivery_type,
                           @RequestParam(name="deriv_notional_change") String deriv_notional_change,
                           @RequestParam(name="upfront_payment") String upfront_payment,
                           @RequestParam(name="upfront_payment_currency") String upfront_payment_currency,
                           @RequestParam(name="price_multiplier") String price_multiplier,
                           @RequestParam(name="sftr_ind") String sftr_ind,
                           @RequestParam(name="waiver_ind") String waiver_ind,
                           @RequestParam(name="short_selling_ind") String short_selling_ind,
                           @RequestParam(name="otc_post_trade_ind") String otc_post_trade_ind,
                           @RequestParam(name="commodity_deriv_ind") String commodity_deriv_ind,
                           @RequestParam(name="excuting_entity") String excuting_entity,
                           @RequestParam(name="manual_replay_status") String manual_replay_status,
                           @RequestParam(name="routing_to") String routing_to,
                           @RequestParam(name="routing_to_purpose") String routing_to_purpose,
                           @RequestParam(name="reason_code") String reason_code,
                           @RequestParam(name="enum_value") String enum_value,
                           @RequestParam(name="wm_flag") String wm_flag,
                           @RequestParam(name="reg_rules_response") String reg_rules_response,
                           @RequestParam(name="arm_eligible_flag") String arm_eligible_flag,
                           @RequestParam(name="arm_eligibility_reg_rules") String arm_eligibility_reg_rules,
                           @RequestParam(name="apa_eligible_flag") String apa_eligible_flag,
                           @RequestParam(name="apa_eligibility_reg_rules") String apa_eligibility_reg_rules,
                           @RequestParam(name="rts23_eligible_flag") String rts23_eligible_flag,
                           @RequestParam(name="rts23_eligibility_reg_rules") String rts23_eligibility_reg_rules,
                           @RequestParam(name="trade_owner") String trade_owner){
        ModelAndView modelAndView = new ModelAndView();
        SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        String trade_id = CreateTradeId.getTradeId();
        log.info("=====> Submit Trade : {}", trade_id);
        Trade trade = new Trade(trade_id,
                                getValue(primary_asset_class),getValue(product),getValue(originating_event),
                                getValue(reporting_regime),getValue(usi_issuer),
                                getValue(usi_value.equals("NA") ? usi_value : usi_value + trade_id),
                                getValue(uti_originator),
                                getValue(outgoing),getValue(has_ack_nack),getValue(tr_determined_rep_role),
                                getValue(intent_to_clear),getValue(execution_venue),getValue(system_trade_source),
                                getValue(notional_ccy_1),getValue(notional_ccy_2),getValue(quantity),getValue(net_amount),
                                getValue(price),getValue(option_type),getValue(strike_price),getValue(option_exercise_style),
                                getValue(delivery_type),getValue(deriv_notional_change),getValue(upfront_payment),
                                getValue(upfront_payment_currency),getValue(price_multiplier),getValue(sftr_ind),
                                getValue(waiver_ind),getValue(short_selling_ind),getValue(otc_post_trade_ind),
                                getValue(commodity_deriv_ind),getValue(excuting_entity),getValue(manual_replay_status),getValue(routing_to),getValue(routing_to_purpose),
                                getValue(reason_code),getValue(enum_value),
                                getValue(wm_flag),getValue(reg_rules_response),getValue(arm_eligible_flag),
                                getValue(arm_eligibility_reg_rules),getValue(apa_eligible_flag),getValue(apa_eligibility_reg_rules),
                                getValue(rts23_eligible_flag),getValue(rts23_eligibility_reg_rules),
                                formatter.format(new Date(System.currentTimeMillis())),getValue(trade_owner));

        boolean result = tradeService.submitTrade(trade);
        if(result){
            modelAndView.addObject("message", "Succeed");
        } else {
            modelAndView.addObject("message", "Failed");
        }
        modelAndView.addObject("action", "Submit");
        modelAndView.setViewName("submit_trade_status");
        return modelAndView;
    }

    @RequestMapping(value ="/showAllTradeData.do")
    public ModelAndView showAllTradeData(){
        log.info("Show All Trade Data");
        ModelAndView modelAndView = new ModelAndView();
        List<Trade> tradeList = tradeService.showAllTradeData();
        modelAndView.addObject("tradeList", tradeList);
        modelAndView.setViewName("show_data");
        return modelAndView;
    }

    @RequestMapping(value ="/selectTradeById.do")
    public ModelAndView selectTradeById(@RequestParam(name="trade_id") String trade_id){
        log.info("Select Trade By Id : " + trade_id);
        ModelAndView modelAndView = new ModelAndView();
        Trade trade = tradeService.selectTradeById(trade_id);
        modelAndView.addObject("tradeInfo", trade);
        return modelAndView;
    }

    @RequestMapping(value ="/deleteTradeById.do")
    public ModelAndView deleteTradeById(@RequestParam(name="trade_id") String trade_id){
        log.info("Delete Trade By Id : " + trade_id);
        ModelAndView modelAndView = new ModelAndView();
        boolean result = tradeService.deleteTradeById(trade_id);
        if(result){
            modelAndView.addObject("message", "Succeed");
        } else {
            modelAndView.addObject("message", "Failed");
        }
        modelAndView.addObject("action", "Delete");
        modelAndView.setViewName("submit_trade_status");
        return modelAndView;
    }

    @RequestMapping(value = "/updateTrade.do")
    public ModelAndView updateTrade(
                            @RequestParam(name="trade_id") String trade_id,
                            @RequestParam(name="primary_asset_class") String primary_asset_class,
                            @RequestParam(name="product") String product,
                            @RequestParam(name="originating_event") String originating_event,
                            @RequestParam(name="reporting_regime") String reporting_regime,
                            @RequestParam(name="usi_issuer") String usi_issuer,
                            @RequestParam(name="usi_value") String usi_value,
                            @RequestParam(name="uti_originator") String uti_originator,
                            @RequestParam(name="outgoing") String outgoing,
                            @RequestParam(name="has_ack_nack") String has_ack_nack,
                            @RequestParam(name="tr_determined_rep_role") String tr_determined_rep_role,
                            @RequestParam(name="intent_to_clear") String intent_to_clear,
                            @RequestParam(name="execution_venue") String execution_venue,
                            @RequestParam(name="system_trade_source") String system_trade_source,
                            @RequestParam(name="notional_ccy_1") String notional_ccy_1,
                            @RequestParam(name="notional_ccy_2") String notional_ccy_2,
                            @RequestParam(name="quantity") String quantity,
                            @RequestParam(name="net_amount") String net_amount,
                            @RequestParam(name="price") String price,
                            @RequestParam(name="option_type") String option_type,
                            @RequestParam(name="strike_price") String strike_price,
                            @RequestParam(name="option_exercise_style") String option_exercise_style,
                            @RequestParam(name="delivery_type") String delivery_type,
                            @RequestParam(name="deriv_notional_change") String deriv_notional_change,
                            @RequestParam(name="upfront_payment") String upfront_payment,
                            @RequestParam(name="upfront_payment_currency") String upfront_payment_currency,
                            @RequestParam(name="price_multiplier") String price_multiplier,
                            @RequestParam(name="sftr_ind") String sftr_ind,
                            @RequestParam(name="waiver_ind") String waiver_ind,
                            @RequestParam(name="short_selling_ind") String short_selling_ind,
                            @RequestParam(name="otc_post_trade_ind") String otc_post_trade_ind,
                            @RequestParam(name="commodity_deriv_ind") String commodity_deriv_ind,
                            @RequestParam(name="excuting_entity") String excuting_entity,
                            @RequestParam(name="manual_replay_status") String manual_replay_status,
                            @RequestParam(name="routing_to") String routing_to,
                            @RequestParam(name="routing_to_purpose") String routing_to_purpose,
                            @RequestParam(name="reason_code") String reason_code,
                            @RequestParam(name="enum_value") String enum_value,
                            @RequestParam(name="wm_flag") String wm_flag,
                            @RequestParam(name="reg_rules_response") String reg_rules_response,
                            @RequestParam(name="arm_eligible_flag") String arm_eligible_flag,
                            @RequestParam(name="arm_eligibility_reg_rules") String arm_eligibility_reg_rules,
                            @RequestParam(name="apa_eligible_flag") String apa_eligible_flag,
                            @RequestParam(name="apa_eligibility_reg_rules") String apa_eligibility_reg_rules,
                            @RequestParam(name="rts23_eligible_flag") String rts23_eligible_flag,
                            @RequestParam(name="rts23_eligibility_reg_rules") String rts23_eligibility_reg_rules,
                            @RequestParam(name="trade_owner") String trade_owner){
        log.info("=====> Update Trade : {}", trade_id);
        SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        Trade trade = new Trade(getValue(trade_id),
                getValue(primary_asset_class),getValue(product),getValue(originating_event),
                getValue(reporting_regime),getValue(usi_issuer),
                getValue(usi_value.equals("NA") || usi_value.equals("Please select") ? usi_value : usi_value + trade_id),
                getValue(uti_originator),
                getValue(outgoing),getValue(has_ack_nack),getValue(tr_determined_rep_role),
                getValue(intent_to_clear),getValue(execution_venue),getValue(system_trade_source),
                getValue(notional_ccy_1),getValue(notional_ccy_2),getValue(quantity),getValue(net_amount),
                getValue(price),getValue(option_type),getValue(strike_price),getValue(option_exercise_style),
                getValue(delivery_type),getValue(deriv_notional_change),getValue(upfront_payment),
                getValue(upfront_payment_currency),getValue(price_multiplier),getValue(sftr_ind),
                getValue(waiver_ind),getValue(short_selling_ind),getValue(otc_post_trade_ind),
                getValue(commodity_deriv_ind),getValue(excuting_entity),getValue(manual_replay_status),getValue(routing_to),getValue(routing_to_purpose),
                getValue(reason_code),getValue(enum_value),getValue(wm_flag),getValue(reg_rules_response),getValue(arm_eligible_flag),
                getValue(arm_eligibility_reg_rules),getValue(apa_eligible_flag),getValue(apa_eligibility_reg_rules),
                getValue(rts23_eligible_flag),getValue(rts23_eligibility_reg_rules),
                formatter.format(new Date(System.currentTimeMillis())),trade_owner);
        tradeService.submitTrade(trade);
        ModelAndView modelAndView = new ModelAndView();
        List<Trade> tradeList = tradeService.showAllTradeData();
        modelAndView.addObject("tradeList", tradeList);
        modelAndView.setViewName("show_data");
        return modelAndView;
    }
}
