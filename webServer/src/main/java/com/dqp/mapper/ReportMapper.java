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

    @Select("select count(1) from trade where userId = #{userId}")
    Exception selectExceptionByUserId(@Param("userId") String userId);


    @Select("SELECT count(1) FROM trade t")
    BigInteger getTotalDaily();

    @Select("SELECT DAYNAME(date(trade_date)) as name,COUNT(1) * 10 as number FROM trade t " +
            "WHERE date_sub(curdate(), interval 7 day) <= date(trade_date) " +
            "group by date(trade_date) ORDER by date(trade_date)")
    List<Report> getPersonalTradeWeekly();

    @Select("SELECT DAYNAME(date(trade_date)) as name,COUNT(1) as number FROM trade t " +
            "WHERE date_sub(curdate(), interval 7 day) <= date(trade_date) " +
            "group by date(trade_date) ORDER by date(trade_date)")
    List<Report> getPersonalTradeExceptionWeekly();
}
