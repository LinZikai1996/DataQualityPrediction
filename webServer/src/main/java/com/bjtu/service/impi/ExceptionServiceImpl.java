package com.bjtu.service.impi;

import com.bjtu.mapper.ExceptionMapper;
import com.bjtu.pojo.Exception;
import com.bjtu.service.ExceptionService;
import com.github.pagehelper.PageHelper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ExceptionServiceImpl implements ExceptionService {

    @Autowired
    ExceptionMapper exceptionMapper;

    @Override
    public List<Exception> selectAllException(int pageNum, int pageSize) {
        PageHelper.startPage(pageNum, pageSize);
        return exceptionMapper.selectAll();
    }

    @Override
    public Exception selectExceptionByUserId(String userId) {
        return exceptionMapper.selectExceptionByUserId(userId);
    }
}
