package com.dqp.service;

import com.dqp.pojo.Trade;

import java.util.List;

public interface TradeService {

    void submitTrade(Trade trade);

    List<Trade> showTradeException();
}
