package com.dqp.service.impi;

import com.dqp.mapper.PersonReportMapper;
import com.dqp.pojo.Report;
import com.dqp.service.ReportService;
import org.springframework.stereotype.Service;

import java.math.BigInteger;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

@Service
public class ReportServiceImpl implements ReportService {

    final PersonReportMapper reportMapper;

    public ReportServiceImpl(PersonReportMapper reportMapper) {
        this.reportMapper = reportMapper;
    }

    @Override
    public BigInteger getPersonalTotalDaily(String userId) {
        return reportMapper.getTotalDaily(userId);
    }

    @Override
    public BigInteger getPersonalExceptionDaily(String userId) {
        return reportMapper.getExceptionDaily(userId);
    }

    @Override
    public List<Report> getPersonalTradeWeekly() {
        return processWeekData(reportMapper.getTotalWeekly());
    }

    @Override
    public List<Report> getPersonalTradeExceptionWeekly() {
        return processWeekData(reportMapper.getExceptionWeekly());
    }

    @Override
    public List<Report> getPersonalTotalMonthly() {
        return reportMapper.getTotalMonthly();
    }

    @Override
    public List<Report> getPersonalTradeExceptionMonthly() {
        return reportMapper.getExceptionMonthly();
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
