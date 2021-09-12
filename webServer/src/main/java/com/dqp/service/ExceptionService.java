package com.dqp.service;

import com.dqp.pojo.Exception;

import java.util.List;

public interface ExceptionService {

    List<Exception> selectAllException(int pageNum, int pageSize);

    Exception selectExceptionByUserId(String userId);
}
