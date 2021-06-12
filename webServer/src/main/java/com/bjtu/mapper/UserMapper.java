package com.bjtu.mapper;

import com.bjtu.pojo.User;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Component;

import java.util.List;

@Component
public interface UserMapper {

    @Select("select * from user")
    List<User> selectAll();

    @Select("select * from user where id = #{id}")
    User selectUserById(@Param("id") String id);

    @Insert("insert into user (id, name, password, departmentId) " +
            "value (#{user.id}, #{user.name}, #{user.password}, #{user.departmentId}) ")
    int addUser(@Param("user")User user);
}
