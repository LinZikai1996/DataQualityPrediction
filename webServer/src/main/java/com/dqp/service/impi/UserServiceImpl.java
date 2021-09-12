package com.dqp.service.impi;

import com.dqp.mapper.UserMapper;
import com.dqp.pojo.User;
import com.dqp.service.UserService;
import com.github.pagehelper.PageHelper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UserServiceImpl implements UserService {

    @Autowired
    private UserMapper userMapper;

    @Override
    public List<User> findAll(int pageNum, int pageSize) {
        PageHelper.startPage(pageNum, pageSize);
        return userMapper.selectAll();
    }

    @Override
    public User findUserById(String id) {
        return userMapper.selectUserById(id);
    }

    @Override
    public int addUser(User user) {
        return userMapper.addUser(user);
    }
}
