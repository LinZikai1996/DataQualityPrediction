package com.dqp.util;

public class CreateTradeId {
    public static String getTradeId(){
        return String.valueOf((int)((Math.random() * 9+1 ) * (int) (System.currentTimeMillis() / 100000)));
    }
}
