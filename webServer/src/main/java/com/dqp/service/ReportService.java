package com.dqp.service;

import com.dqp.pojo.Report;

import java.math.BigInteger;
import java.util.List;

public interface ReportService {

    BigInteger getPersonalTotalDaily(String userId);

    BigInteger getPersonalExceptionDaily(String userId);

    List<Report> getPersonalTradeWeekly();

    List<Report> getPersonalTradeExceptionWeekly();
}
