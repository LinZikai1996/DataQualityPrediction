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
    public boolean submitTrade(Trade trade) {
        int result = tradeMapper.addTrade(trade);
        return result == 1;
    }

    @Override
    public List<Trade> showAllTradeData() {
        return tradeMapper.selectAll();
    }

    @Override
    public Trade selectTradeById(String tradeId) {
        return tradeMapper.selectTrade(tradeId);
    }
}
