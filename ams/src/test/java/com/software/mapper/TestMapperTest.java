package com.software.mapper;

import com.software.entity.User;
import com.software.mapper.po.TestPo;
import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import java.util.Map;

import static org.junit.Assert.*;

public class TestMapperTest {
    private ApplicationContext applicationContext;

    @Before
    public void setUp() throws Exception {
        applicationContext=new
                ClassPathXmlApplicationContext("classpath:applicationContext-mybatis.xml");

    }
    @Test
    public void TestFindById(){
        TestMapper testMapper=(TestMapper) applicationContext.getBean("testMapper");

//        testMapper.insertTest("123",100,100,100);

    }


}
