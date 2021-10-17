package com.dqp.util;

public class GetSubmittedValue {
    public static String getValue(String s){
        if (!"Please select".equals(s) && s != null){
            return s.trim();
        } else {
            return "";
        }
    }
}
