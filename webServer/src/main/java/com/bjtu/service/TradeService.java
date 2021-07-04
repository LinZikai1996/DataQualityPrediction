package com.bjtu.service;

import com.bjtu.pojo.Trade;

import java.util.List;

public interface TradeService {

    void submitTrade();

    List<Trade> showTradeException();
}
