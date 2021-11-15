package com.dqp;

import com.dqp.mapper.ReportMapper;
import com.dqp.pojo.Report;
import com.dqp.service.ReportService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;

import java.math.BigInteger;
import java.util.*;

@RunWith(SpringJUnit4ClassRunner.class)
@WebAppConfiguration
@SpringBootTest(classes = MainApplication.class)
public class ReportControllerTest {

    @Autowired
    ReportMapper reportMapper;

    @Test
    public void getPersonalReport(){
        List<Report> reportList = reportMapper.getPersonalTradeWeekly();
        Map<String, BigInteger> weekdayData = new HashMap<>();
        String[] weekDays = {"Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"};
        Calendar cal = Calendar.getInstance();
        cal.setTime(new Date(System.currentTimeMillis()));
        for(int i = 1 ; i < 8 ; i++){
            int w = cal.get(Calendar.DAY_OF_WEEK) - i;
            if (w < 0) {
                w = w + 7;
            }
            System.out.println(weekDays[w]);
            BigInteger count = BigInteger.ZERO;
            for (Report r: reportList){
                if (weekDays[w].equals(r.getName())){
                    count = r.getNumber();
                }
            }
            weekdayData.put(weekDays[w], count);
        }
        System.out.println(weekdayData);
    }

}