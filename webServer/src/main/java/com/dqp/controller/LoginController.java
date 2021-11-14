package com.dqp.controller;

import com.dqp.pojo.User;
import com.dqp.service.UserService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

@Controller
@Slf4j
@SessionAttributes("user")
public class LoginController {

    private final UserService userService;

    public LoginController(UserService userService) {
        this.userService = userService;
    }

    @RequestMapping("/login.do")
    public ModelAndView findUserById(@RequestParam(name="userId") String userId,
                                     @RequestParam(name="password") String password){
        ModelAndView modelAndView = new ModelAndView();

        User user = userService.findUserById(userId);
        if (user != null && password.equals(user.getPassword())){
            log.info("user id : " + userId + " login");
            modelAndView.addObject("user", userId);
            modelAndView.setViewName("index");
        } else {
            log.info("user id : " + userId + " login have issue");
            modelAndView.setViewName("login");
        }

        return modelAndView;
    }
}
