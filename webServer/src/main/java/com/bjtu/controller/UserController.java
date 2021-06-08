package com.bjtu.controller;

import com.bjtu.pojo.User;
import com.bjtu.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
public class UserController {

    @Autowired
    private UserService userService;

    @RequestMapping("/findAllUser")
    public List<User> findAllUser(){

        return userService.findAll();
    }
}
