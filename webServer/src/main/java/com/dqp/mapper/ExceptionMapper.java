package com.dqp.mapper;

import com.dqp.pojo.Exception;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Component;

import java.util.List;

@Component
public interface ExceptionMapper {

    @Select("select * from exception")
    List<Exception> selectAll();

    @Select("select * from exception where userId = #{userId}")
    Exception selectExceptionByUserId(@Param("userId") String userId);
}
