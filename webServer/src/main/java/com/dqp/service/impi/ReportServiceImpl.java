package com.dqp.service.impi;

import com.dqp.mapper.ReportMapper;
import com.dqp.pojo.Report;
import com.dqp.service.ReportService;
import org.springframework.stereotype.Service;

import java.math.BigInteger;
import java.util.*;

@Service
public class ReportServiceImpl implements ReportService {

    final ReportMapper reportMapper;

    public ReportServiceImpl(ReportMapper reportMapper) {
        this.reportMapper = reportMapper;
    }

    @Override
    public BigInteger getTotalDaily() {
        return reportMapper.getTotalDaily();
    }

    @Override
    public BigInteger getExceptionDaily() {
        return null;
    }

    @Override
    public Map<String, BigInteger> getPersonalTradeWeekly() {
        return processWeekData(reportMapper.getPersonalTradeWeekly());
    }

    @Override
    public Map<String, BigInteger> getPersonalTradeExceptionWeekly() {
        return processWeekData(reportMapper.getPersonalTradeExceptionWeekly());
    }

    private Map<String, BigInteger> processWeekData(List<Report> reportList){
        String[] week = {"Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"};
        Map<String, BigInteger> weekDayData = new HashMap<>();
        Calendar cal = Calendar.getInstance();
        cal.setTime(new Date(System.currentTimeMillis()));

        for(int i = 1 ; i < 8 ; i++){
            int day = cal.get(Calendar.DAY_OF_WEEK) - i;
            if (day < 0) {
                day = day + 7;
            }
            BigInteger count = BigInteger.ZERO;
            for (Report r: reportList){
                if (week[day].equals(r.getName())){
                    count = r.getNumber();
                }
            }
            weekDayData.put(week[day], count);
        }
        return weekDayData;
    }
}
