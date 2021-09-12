package com.dqp.controller;

import com.dqp.pojo.User;
import com.dqp.service.UserService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
public class UserController {

    private static final Logger logger = LoggerFactory.getLogger(UserController.class);

    @Autowired
    private UserService userService;

    @RequestMapping("/findAllUser.do")
    public List<User> findAllUser(@RequestParam(name="page", defaultValue = "1")int page,
                                  @RequestParam(name="size", defaultValue = "4") int size ){
        return userService.findAll(page, size);
    }

    @RequestMapping("/findUserById.do")
    public String findUserById(@RequestParam(name="userId") String userId,
                               @RequestParam(name="password") String password){
        logger.info("user id : " + userId + " login");
        User user = userService.findUserById(userId);
        if (user != null && password.equals(user.getPassword())){
            return "index";
        }
        return "login";
    }

    @RequestMapping("/toAddUserPage.do")
    public String toAddUserPage(){
        logger.info("Add new user");
        return "register";
    }

    @RequestMapping("/addUser.do")
    public String addUser(@RequestParam(name="userId") String userId,
                          @RequestParam(name="userName") String userName,
                          @RequestParam(name="password") String password){
        logger.info(String.format("User id : %s, User name : %s", userId, userName));
        User user = new User();
        user.setId(userId);
        user.setName(userName);
        user.setPassword(password);
        int result = userService.addUser(user);
        if (result == 1){
            logger.info("Succeeded in adding new user : " + user.getName());
            return "login";
        } else {
            logger.error("Failed in adding new user : " + user.getName());
            return "register";
        }
    }
}
