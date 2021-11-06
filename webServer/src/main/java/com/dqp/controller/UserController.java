package com.dqp.controller;

import com.dqp.pojo.User;
import com.dqp.service.UserService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
@Slf4j
public class UserController {

    private final UserService userService;

    public UserController(UserService userService) {
        this.userService = userService;
    }

    @RequestMapping("/findAllUser.do")
    public List<User> findAllUser(@RequestParam(name="page", defaultValue = "1")int page,
                                  @RequestParam(name="size", defaultValue = "4") int size ){
        return userService.findAll(page, size);
    }

    @RequestMapping("/findUserById.do")
    public String findUserById(@RequestParam(name="userId") String userId,
                               @RequestParam(name="password") String password){
        log.info("user id : " + userId + " login");
        User user = userService.findUserById(userId);
        if (user != null && password.equals(user.getPassword())){
            return "index";
        }
        return "login";
    }

    @RequestMapping("/toAddUserPage.do")
    public String toAddUserPage(){
        log.info("Add new user");
        return "register";
    }

    @RequestMapping("/addUser.do")
    public String addUser(@RequestParam(name="userId") String userId,
                          @RequestParam(name="userName") String userName,
                          @RequestParam(name="password") String password){
        log.info(String.format("User id : %s, User name : %s", userId, userName));
        User user = new User();
        user.setId(userId);
        user.setName(userName);
        user.setPassword(password);
        int result = userService.addUser(user);
        if (result == 1){
            log.info("Succeeded in adding new user : " + user.getName());
            return "login";
        } else {
            log.error("Failed in adding new user : " + user.getName());
            return "register";
        }
    }
}
