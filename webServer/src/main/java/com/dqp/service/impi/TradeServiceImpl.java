package com.dqp.service.impi;

import com.dqp.mapper.TradeMapper;
import com.dqp.pojo.Trade;
import com.dqp.service.TradeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class TradeServiceImpl implements TradeService {

    @Autowired
    TradeMapper tradeMapper;

    @Override
    public void submitTrade(Trade trade) {
        tradeMapper.addTrade(trade);
    }

    @Override
    public List<Trade> showTradeException() {
        return tradeMapper.selectAll();
    }
}