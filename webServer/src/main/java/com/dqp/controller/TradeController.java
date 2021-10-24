package com.dqp.controller;

import com.dqp.pojo.Trade;
import com.dqp.service.TradeService;
import com.dqp.util.CreateTradeId;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import java.sql.Date;
import java.text.SimpleDateFormat;
import java.util.List;

import static com.dqp.util.GetSubmittedValue.getValue;

@Controller
public class TradeController {

    private static final Logger logger = LoggerFactory.getLogger(TradeController.class);

    @Autowired
    TradeService tradeService;

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
                           @RequestParam(name="src_determined_rep_role") String src_determined_rep_role,
                           @RequestParam(name="ma_determined_rep_role") String ma_determined_rep_role,
                           @RequestParam(name="wack_regimes") String wack_regimes,
                           @RequestParam(name="confirmation_method") String confirmation_method,
                           @RequestParam(name="intent_to_clear") String intent_to_clear,
                           @RequestParam(name="execution_venue") String execution_venue,
                           @RequestParam(name="reported_by") String reported_by,
                           @RequestParam(name="allocation_status") String allocation_status,
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
                           @RequestParam(name="executing_entity") String executing_entity,
                           @RequestParam(name="price_multiplier") String price_multiplier,
                           @RequestParam(name="underlyer") String underlyer,
                           @RequestParam(name="sftr_ind") String sftr_ind,
                           @RequestParam(name="waiver_ind") String waiver_ind,
                           @RequestParam(name="short_selling_ind") String short_selling_ind,
                           @RequestParam(name="otc_post_trade_ind") String otc_post_trade_ind,
                           @RequestParam(name="commodity_deriv_ind") String commodity_deriv_ind,
                           @RequestParam(name="manual_ignore_status") String manual_ignore_status,
                           @RequestParam(name="manual_action_status") String manual_action_status,
                           @RequestParam(name="manual_replay_status") String manual_replay_status,
                           @RequestParam(name="routing_to") String routing_to,
                           @RequestParam(name="routing_to_purpose") String routing_to_purpose,
                           @RequestParam(name="reason_code") String reason_code,
                           @RequestParam(name="reason_category") String reason_category,
                           @RequestParam(name="enum_value") String enum_value,
                           @RequestParam(name="sequence") String sequence,
                           @RequestParam(name="wm_flag") String wm_flag,
                           @RequestParam(name="reg_rules_response") String reg_rules_response,
                           @RequestParam(name="arm_eligible_flag") String arm_eligible_flag,
                           @RequestParam(name="arm_eligibility_reg_rules") String arm_eligibility_reg_rules,
                           @RequestParam(name="apa_eligible_flag") String apa_eligible_flag,
                           @RequestParam(name="apa_eligibility_reg_rules") String apa_eligibility_reg_rules,
                           @RequestParam(name="rts23_eligible_flag") String rts23_eligible_flag,
                           @RequestParam(name="rts23_eligibility_reg_rules") String rts23_eligibility_reg_rules){
        ModelAndView modelAndView = new ModelAndView();
        SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        String trade_id = CreateTradeId.getTradeId();
        logger.info("=====> Submit Trade : {}", trade_id);
        Trade trade = new Trade(trade_id,
                                getValue(primary_asset_class),getValue(product),getValue(originating_event),
                                getValue(reporting_regime),getValue(usi_issuer),getValue(usi_value),getValue(uti_originator),
                                getValue(outgoing),getValue(has_ack_nack),getValue(tr_determined_rep_role),
                                getValue(src_determined_rep_role),getValue(ma_determined_rep_role),getValue(wack_regimes),
                                getValue(confirmation_method),getValue(intent_to_clear),getValue(execution_venue),
                                getValue(reported_by),getValue(allocation_status),getValue(system_trade_source),
                                getValue(notional_ccy_1),getValue(notional_ccy_2),getValue(quantity),getValue(net_amount),
                                getValue(price),getValue(option_type),getValue(strike_price),getValue(option_exercise_style),
                                getValue(delivery_type),getValue(deriv_notional_change),getValue(upfront_payment),
                                getValue(executing_entity),getValue(price_multiplier),getValue(underlyer),getValue(sftr_ind),
                                getValue(waiver_ind),getValue(short_selling_ind),getValue(otc_post_trade_ind),
                                getValue(commodity_deriv_ind),getValue(manual_ignore_status),getValue(manual_action_status),
                                getValue(manual_replay_status),getValue(routing_to),getValue(routing_to_purpose),
                                getValue(reason_code),getValue(reason_category),getValue(enum_value),getValue(sequence),
                                getValue(wm_flag),getValue(reg_rules_response),getValue(arm_eligible_flag),
                                getValue(arm_eligibility_reg_rules),getValue(apa_eligible_flag),getValue(apa_eligibility_reg_rules),
                                getValue(rts23_eligible_flag),getValue(rts23_eligibility_reg_rules),
                                formatter.format(new Date(System.currentTimeMillis())));

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
        logger.info("Get All Trade Data");
        ModelAndView modelAndView = new ModelAndView();
        List<Trade> tradeList = tradeService.showAllTradeData();
        modelAndView.addObject("tradeList", tradeList);
        modelAndView.setViewName("show_data");
        return modelAndView;
    }

    @RequestMapping(value ="/selectTradeById.do")
    public ModelAndView selectTradeById(@RequestParam(name="trade_id") String trade_id){
        logger.info("Select Trade By Id : " + trade_id);
        ModelAndView modelAndView = new ModelAndView();
        Trade trade = tradeService.selectTradeById(trade_id);
        modelAndView.addObject("tradeInfo", trade);
        return modelAndView;
    }

    @RequestMapping(value ="/deleteTradeById.do")
    public ModelAndView deleteTradeById(@RequestParam(name="trade_id") String trade_id){
        logger.info("Delete Trade By Id : " + trade_id);
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
}
