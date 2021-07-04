package com.bjtu.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.io.Serializable;
import java.math.BigInteger;

@NoArgsConstructor
@AllArgsConstructor
@Data
public class Exception implements Serializable {
    private String userId;
    private BigInteger type_1;
    private BigInteger type_2;
    private BigInteger type_3;
    private BigInteger type_4;
    private BigInteger type_5;
    private BigInteger type_6;
    private BigInteger type_7;
    private BigInteger type_8;
    private BigInteger type_9;
    private BigInteger type_10;
}
