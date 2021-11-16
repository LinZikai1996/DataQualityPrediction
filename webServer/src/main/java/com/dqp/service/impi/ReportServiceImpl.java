package com.dqp.service.impi;

import com.dqp.mapper.ReportMapper;
import com.dqp.pojo.Report;
import com.dqp.service.ReportService;
import org.apache.commons.lang3.StringUtils;
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
    public BigInteger getPersonalTotalDaily(String userId) {
        return reportMapper.getPersonalTotalDaily(userId);
    }

    @Override
    public BigInteger getPersonalExceptionDaily(String userId) {
        return reportMapper.getPersonalExceptionDaily(userId);
    }

    @Override
    public List<Report> getPersonalTradeWeekly() {
        return processWeekData(reportMapper.getPersonalTradeWeekly());
    }

    @Override
    public List<Report> getPersonalTradeExceptionWeekly() {
        return processWeekData(reportMapper.getPersonalTradeExceptionWeekly());
    }

    private List<Report> processWeekData(List<Report> reportList){
        String[] week = {"Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"};
        List<Report> weekDayData = new ArrayList<>();
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
            weekDayData.add(new Report(week[day].substring(0, 3), count));
        }
        return weekDayData;
    }
}
