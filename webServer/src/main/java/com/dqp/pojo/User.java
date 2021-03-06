package com.dqp.pojo;


import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.io.Serializable;

@NoArgsConstructor
@AllArgsConstructor
@Data
public class User implements Serializable {
    private String id;
    private String name;
    private String password;
    private String departmentId;
}
