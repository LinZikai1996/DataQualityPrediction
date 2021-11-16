package com.dqp.service;

import com.dqp.pojo.Report;

import java.math.BigInteger;
import java.util.List;

public interface ReportService {

    BigInteger getTotalDaily();

    BigInteger getExceptionDaily();

    List<Report> getPersonalTradeWeekly();

    List<Report> getPersonalTradeExceptionWeekly();
}
