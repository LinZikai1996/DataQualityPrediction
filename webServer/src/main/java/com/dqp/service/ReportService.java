package com.dqp.service;

import com.dqp.pojo.Report;

import java.math.BigInteger;
import java.util.List;
import java.util.Map;

public interface ReportService {

    BigInteger getTotalDaily();

    BigInteger getExceptionDaily();

    Map<String, BigInteger> getPersonalTradeWeekly();

    Map<String, BigInteger> getPersonalTradeExceptionWeekly();
}
