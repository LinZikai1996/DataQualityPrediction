package com.bjtu.service;

import com.bjtu.pojo.Exception;

import java.util.List;

public interface ExceptionService {

    List<Exception> selectAllException(int pageNum, int pageSize);

    Exception selectExceptionByUserId(String userId);
}
