package com.bjtu.controller;

import com.bjtu.pojo.User;
import com.bjtu.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
public class UserController {

    @Autowired
    private UserService userService;

    @RequestMapping("/findAllUser")
    public List<User> findAllUser(@RequestParam(name="page", defaultValue = "1")int page,
                                  @RequestParam(name="size", defaultValue = "4") int size ){
        return userService.findAll(page, size);
    }

    public User findUserById(@RequestParam(name="user") User user){
        return userService.findUserById(user.getId());
    }
}
