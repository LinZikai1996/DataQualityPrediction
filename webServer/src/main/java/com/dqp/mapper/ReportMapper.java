package com.dqp.mapper;

import com.dqp.pojo.Exception;
import com.dqp.pojo.Report;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import java.math.BigInteger;
import java.util.List;

@Mapper
public interface ReportMapper {

    @Select("SELECT count(1) * 100 FROM trade t where trade_owner = #{userId}")
    BigInteger getPersonalTotalDaily(String userId);

    @Select("SELECT count(1) * 2 FROM trade t where trade_owner = #{userId}")
    BigInteger getPersonalExceptionDaily(String userId);

    @Select("SELECT DAYNAME(date(trade_date)) as name,COUNT(1) * 100 as number FROM trade t " +
            "WHERE date_sub(curdate(), interval 7 day) <= date(trade_date) " +
            "group by date(trade_date) ORDER by date(trade_date)")
    List<Report> getPersonalTradeWeekly();

    @Select("SELECT DAYNAME(date(trade_date)) as name,COUNT(1) * 2 as number FROM trade t " +
            "WHERE date_sub(curdate(), interval 7 day) <= date(trade_date) " +
            "group by date(trade_date) ORDER by date(trade_date)")
    List<Report> getPersonalTradeExceptionWeekly();
}
