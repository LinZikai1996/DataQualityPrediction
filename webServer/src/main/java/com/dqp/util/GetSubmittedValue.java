package com.dqp.util;

import java.util.Locale;

public class GetSubmittedValue {
    public static String getValue(String s){
        if (!"Please select".equals(s) && s != null && !"NA".equalsIgnoreCase(s)){
            return s.trim();
        } else {
            return "";
        }
    }
}
