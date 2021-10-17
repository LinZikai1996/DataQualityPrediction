package com.dqp.controller;

import com.dqp.pojo.Trade;
import com.dqp.service.TradeService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.sql.Date;
import java.text.SimpleDateFormat;

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

        SimpleDateFormat formatter= new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        Date date = new Date(System.currentTimeMillis());
        logger.info("===== Submit Trade =====");
        Trade trade = new Trade(primary_asset_class,product,originating_event,reporting_regime,usi_issuer,
                                usi_value,uti_originator,outgoing,has_ack_nack,tr_determined_rep_role,src_determined_rep_role,
                                ma_determined_rep_role,wack_regimes,confirmation_method,intent_to_clear,execution_venue,
                                reported_by,allocation_status,system_trade_source,notional_ccy_1,notional_ccy_2,quantity,
                                net_amount,price,option_type,strike_price,option_exercise_style,delivery_type,deriv_notional_change,
                                upfront_payment,executing_entity,price_multiplier,underlyer,sftr_ind,waiver_ind,short_selling_ind,
                                otc_post_trade_ind,commodity_deriv_ind,manual_ignore_status,manual_action_status,manual_replay_status,
                                routing_to,routing_to_purpose,reason_code,reason_category,enum_value,sequence,wm_flag,
                                reg_rules_response,arm_eligible_flag,arm_eligibility_reg_rules,
                                apa_eligible_flag,apa_eligibility_reg_rules,rts23_eligible_flag,rts23_eligibility_reg_rules,
                                date);

        return "submit_trade";
    }
}
