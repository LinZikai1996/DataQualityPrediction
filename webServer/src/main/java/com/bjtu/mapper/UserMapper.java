package com.bjtu.mapper;

import com.bjtu.pojo.User;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Component;

import java.util.List;

@Component
public interface UserMapper {

    @Select("select * from user")
    List<User> selectAll();
}
