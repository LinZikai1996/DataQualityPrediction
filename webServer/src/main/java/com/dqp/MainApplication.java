package com.dqp;

import lombok.extern.slf4j.Slf4j;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
//启动类： StringBoot项目入口
//扫描同包或者子包下的注解
@MapperScan("com.dqp.mapper")
@Slf4j
public class MainApplication {

    public static void main(String[] args) {
        log.info("========== Server Start ==========");
        SpringApplication.run(MainApplication.class, args);
    }
}
