package com.dqp.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.sql.Date;

@NoArgsConstructor
@AllArgsConstructor
@Data
public class Trade {
    String primary_asset_class;
    String product;
    String originating_event;
    String reporting_regime;
    String usi_issuer;
    String usi_value;
    String uti_originator;
    String outgoing;
    String has_ack_nack;
    String tr_determined_rep_role;
    String src_determined_rep_role;
    String ma_determined_rep_role;
    String wack_regimes;
    String confirmation_method;
    String intent_to_clear;
    String execution_venue;
    String reported_by;
    String allocation_status;
    String system_trade_source;
    String notional_ccy_1;
    String notional_ccy_2;
    String quantity;
    String net_amount;
    String price;
    String option_type;
    String strike_price;
    String option_exercise_style;
    String delivery_type;
    String deriv_notional_change;
    String upfront_payment;
    String executing_entity;
    String price_multiplier;
    String underlyer;
    String sftr_ind;
    String waiver_ind;
    String short_selling_ind;
    String otc_post_trade_ind;
    String commodity_deriv_ind;
    String manual_ignore_status;
    String manual_action_status;
    String manual_replay_status;
    String routing_to;
    String routing_to_purpose;
    String reason_code;
    String reason_category;
    String enum_value;
    String sequence;
    String wm_flag;
    String reg_rules_response;
    String arm_eligible_flag;
    String arm_eligibility_reg_rules;
    String apa_eligible_flag;
    String apa_eligibility_reg_rules;
    String rts23_eligible_flag;
    String rts23_eligibility_reg_rules;
    Date trade_date;
}
