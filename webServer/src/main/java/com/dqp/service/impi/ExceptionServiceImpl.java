package com.dqp.service.impi;

import com.dqp.mapper.ExceptionMapper;
import com.dqp.pojo.Exception;
import com.dqp.service.ExceptionService;
import com.github.pagehelper.PageHelper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ExceptionServiceImpl implements ExceptionService {

    private final ExceptionMapper exceptionMapper;

    public ExceptionServiceImpl(ExceptionMapper exceptionMapper) {
        this.exceptionMapper = exceptionMapper;
    }

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
