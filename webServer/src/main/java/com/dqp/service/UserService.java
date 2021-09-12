package com.dqp.service;

import com.dqp.pojo.User;

import java.util.List;

public interface UserService {

    List<User> findAll(int pageNum, int pageSize);

    User findUserById(String id);

    int addUser(User user);
}
