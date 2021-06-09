package com.bjtu.service;

import com.bjtu.pojo.User;

import java.util.List;

public interface UserService {

    List<User> findAll(int pageNum, int pageSize);

    User findUserById(String id);
}
