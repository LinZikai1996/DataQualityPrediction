package com.bjtu.controller;

import com.bjtu.pojo.User;
import com.bjtu.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
public class UserController {

    @Autowired
    private UserService userService;

    @RequestMapping("/findAllUser.do")
    public List<User> findAllUser(@RequestParam(name="page", defaultValue = "1")int page,
                                  @RequestParam(name="size", defaultValue = "4") int size ){
        return userService.findAll(page, size);
    }

    @RequestMapping("/findUserById.do")
    public String findUserById(@RequestParam(name="userId") String userId,
                               @RequestParam(name="pwd") String password){
        User user = userService.findUserById(userId);
        if (user != null && password.equals(user.getPassword())){
            return "index";
        }
        return "login";
    }

    @RequestMapping("/addUser.do")
    public String addUser(@RequestParam(name="userId") String userId,
                          @RequestParam(name="userName") String userName,
                          @RequestParam(name="pwd") String password,
                          @RequestParam(name="departmentId") String departmentId){
        User user = new User();
        user.setId(userId);
        user.setName(userName);
        user.setPassword(password);
        user.setDepartmentId(departmentId);
        int result = userService.addUser(user);
        if (result == 1){
            System.out.println("Add new user");
        }
        return "login";
    }
}
