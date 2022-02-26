package com.dqp.mapper;

import com.dqp.pojo.Exception;
import com.dqp.pojo.Report;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import java.math.BigInteger;
import java.util.List;

@Mapper
public interface PersonReportMapper {

    @Select("SELECT count(1) * 100 FROM trade t where trade_owner = #{userId}")
    BigInteger getTotalDaily(String userId);

    @Select("SELECT count(1) * 2 FROM trade t where trade_owner = #{userId}")
    BigInteger getExceptionDaily(String userId);

    @Select("SELECT DAYNAME(date(trade_date)) as name,COUNT(1) * 100 as number FROM trade t " +
            "WHERE date_sub(curdate(), interval 7 day) <= date(trade_date) " +
            "group by date(trade_date) ORDER by date(trade_date)")
    List<Report> getTotalWeekly();

    @Select("SELECT DAYNAME(date(trade_date)) as name,COUNT(1) * 2 as number FROM trade t " +
            "WHERE date_sub(curdate(), interval 7 day) <= date(trade_date) " +
            "group by date(trade_date) ORDER by date(trade_date)")
    List<Report> getExceptionWeekly();

    @Select("SELECT date(trade_date) as name,COUNT(1) * 100 as number FROM trade t " +
            "WHERE date_sub(curdate(), interval 30 day) <= date(trade_date) " +
            "group by date(trade_date) ORDER by date(trade_date)")
    List<Report> getTotalMonthly();



    @Select("SELECT date(trade_date) as name,COUNT(1) * 2 as number FROM trade t " +
            "WHERE date_sub(curdate(), interval 30 day) <= date(trade_date) " +
            "group by date(trade_date) ORDER by date(trade_date)")
    List<Report> getExceptionMonthly();

}
