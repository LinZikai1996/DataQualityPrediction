package com.dqp.mapper;


import com.dqp.pojo.Trade;
import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Component;

import java.util.List;

@Component
public interface TradeMapper {

    @Select("select " +
            "trade_id,primary_asset_class,product,originating_event,reporting_regime,usi_issuer," +
            "usi_value,uti_originator,outgoing,has_ack_nack,tr_determined_rep_role,intent_to_clear,execution_venue," +
            "system_trade_source,notional_ccy_1,notional_ccy_2,quantity," +
            "net_amount,price,option_type,strike_price,option_exercise_style,delivery_type,deriv_notional_change," +
            "upfront_payment,upfront_payment_currency,price_multiplier,sftr_ind,waiver_ind,short_selling_ind," +
            "otc_post_trade_ind,commodity_deriv_ind,excuting_entity,manual_replay_status," +
            "routing_to,routing_to_purpose,reason_code,reason_category,enum_value,sequence,wm_flag," +
            "reg_rules_response,arm_eligible_flag,arm_eligibility_reg_rules," +
            "apa_eligible_flag,apa_eligibility_reg_rules,rts23_eligible_flag,rts23_eligibility_reg_rules,trade_date " +
            "from trade")
    List<Trade> selectAll();

    @Select("select " +
            "trade_id,primary_asset_class,product,originating_event,reporting_regime,usi_issuer," +
            "usi_value,uti_originator,outgoing,has_ack_nack,tr_determined_rep_role,intent_to_clear,execution_venue," +
            "system_trade_source,notional_ccy_1,notional_ccy_2,quantity," +
            "net_amount,price,option_type,strike_price,option_exercise_style,delivery_type,deriv_notional_change," +
            "upfront_payment,upfront_payment_currency,price_multiplier,sftr_ind,waiver_ind,short_selling_ind," +
            "otc_post_trade_ind,commodity_deriv_ind,excuting_entity,manual_replay_status," +
            "routing_to,routing_to_purpose,reason_code,reason_category,enum_value,sequence,wm_flag," +
            "reg_rules_response,arm_eligible_flag,arm_eligibility_reg_rules," +
            "apa_eligible_flag,apa_eligibility_reg_rules,rts23_eligible_flag,rts23_eligibility_reg_rules,trade_date " +
            "from trade " +
            "where trade_Id = #{tradeId}")
    Trade selectTrade(@Param("tradeId") String tradeId);

    @Insert("insert into trade (trade_id,primary_asset_class,product,originating_event,reporting_regime,usi_issuer," +
                                "usi_value,uti_originator,outgoing,has_ack_nack,tr_determined_rep_role,intent_to_clear,execution_venue," +
                                "system_trade_source,notional_ccy_1,notional_ccy_2,quantity," +
                                "net_amount,price,option_type,strike_price,option_exercise_style,delivery_type,deriv_notional_change," +
                                "upfront_payment,upfront_payment_currency,price_multiplier,sftr_ind,waiver_ind,short_selling_ind," +
                                "otc_post_trade_ind,commodity_deriv_ind,excuting_entity,manual_replay_status," +
                                "routing_to,routing_to_purpose,reason_code,reason_category,enum_value,sequence,wm_flag," +
                                "reg_rules_response,arm_eligible_flag,arm_eligibility_reg_rules," +
                                "apa_eligible_flag,apa_eligibility_reg_rules,rts23_eligible_flag,rts23_eligibility_reg_rules,trade_date) " +
            "value (#{trade.trade_id},#{trade.primary_asset_class},#{trade.product},#{trade.originating_event}," +
                    "#{trade.reporting_regime},#{trade.usi_issuer},#{trade.usi_value},#{trade.uti_originator},#{trade.outgoing}," +
                    "#{trade.has_ack_nack},#{trade.tr_determined_rep_role},#{trade.intent_to_clear},#{trade.execution_venue}," +
                    "#{trade.system_trade_source},#{trade.notional_ccy_1},#{trade.notional_ccy_2}," +
                    "#{trade.quantity},#{trade.net_amount},#{trade.price},#{trade.option_type},#{trade.strike_price}," +
                    "#{trade.option_exercise_style},#{trade.delivery_type},#{trade.deriv_notional_change},#{trade.upfront_payment}," +
                    "#{trade.upfront_payment_currency},#{trade.price_multiplier},#{trade.sftr_ind},#{trade.waiver_ind}," +
                    "#{trade.short_selling_ind},#{trade.otc_post_trade_ind},#{trade.commodity_deriv_ind}," +
                    "#{trade.excuting_entity},#{trade.manual_replay_status},#{trade.routing_to},#{trade.routing_to_purpose}," +
                    "#{trade.reason_code},#{trade.reason_category},#{trade.enum_value},#{trade.sequence},#{trade.wm_flag}," +
                    "#{trade.reg_rules_response},#{trade.arm_eligible_flag},#{trade.arm_eligibility_reg_rules},#{trade.apa_eligible_flag}," +
                    "#{trade.apa_eligibility_reg_rules},#{trade.rts23_eligible_flag},#{trade.rts23_eligibility_reg_rules},#{trade.trade_date})")
    int addTrade(@Param("trade") Trade trade);

    @Delete("delete from trade where trade_Id = #{tradeId}")
    int deleteTrade(@Param("tradeId") String tradeId);
}
