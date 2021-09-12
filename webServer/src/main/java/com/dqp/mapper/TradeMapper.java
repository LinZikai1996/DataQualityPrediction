package com.dqp.mapper;


import com.dqp.pojo.Trade;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Component;

import java.util.List;

@Component
public interface TradeMapper {

    @Select("select * from trade")
    List<Trade> selectAll();

    @Select("select * from where tradeId = #{tradeId}")
    Trade selctTrade(@Param("tradeId") String tradeId);
}
