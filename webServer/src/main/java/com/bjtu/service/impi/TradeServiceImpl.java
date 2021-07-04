package com.bjtu.service.impi;

import com.bjtu.mapper.TradeMapper;
import com.bjtu.pojo.Trade;
import com.bjtu.service.TradeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class TradeServiceImpl implements TradeService {

    @Autowired
    TradeMapper tradeMapper;

    @Override
    public void submitTrade() {

    }

    @Override
    public List<Trade> showTradeException() {
        return tradeMapper.selectAll();
    }


}
