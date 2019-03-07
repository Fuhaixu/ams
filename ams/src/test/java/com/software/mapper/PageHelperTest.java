package com.software.mapper;


import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.software.dao.QuesDao;
import com.software.entity.Question;
import com.software.services.QuesService;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import java.util.List;

public class PageHelperTest {
    @Autowired
    private QuesDao quesDao;
    private ApplicationContext ac;
    @Test
    public void page()
    {
    }
}
