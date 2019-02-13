package com.software.mapper;

import com.software.entity.User;
import org.junit.Before;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.testng.annotations.BeforeMethod;

import static org.testng.Assert.*;

/**
 * @Author: FHX
 * @Date: 2019/2/12 14:24
 * @Version 1.0
 */
public class UserMapperTest {

    private ApplicationContext applicationContext;

    @Before
    public void setUp() throws Exception {
        applicationContext=new
                ClassPathXmlApplicationContext("classpath:applicationContext-mybatis.xml");

    }

    @Test
    public void TestFindById(){
        UserMapper userMapper=(UserMapper) applicationContext.getBean("userMapper");
        String pwd=userMapper.findPwdById("12346");
        int ct=userMapper.countUserById("123456");
        System.out.println(ct);
        System.out.println(pwd);
    }
}