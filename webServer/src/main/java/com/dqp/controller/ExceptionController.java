package com.dqp.controller;

import com.dqp.pojo.Exception;
import com.dqp.service.ExceptionService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller
public class ExceptionController {

    private final ExceptionService exceptionService;

    public ExceptionController(ExceptionService exceptionService) {
        this.exceptionService = exceptionService;
    }

    @RequestMapping("/findAllException.do")
    public List<Exception> findAllUser(@RequestParam(name="page", defaultValue = "1")int page,
                                       @RequestParam(name="size", defaultValue = "4") int size ){
        return exceptionService.selectAllException(page, size);
    }

}
