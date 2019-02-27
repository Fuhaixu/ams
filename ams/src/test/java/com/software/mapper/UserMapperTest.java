package com.software.mapper;

import com.software.entity.User;
import org.junit.Before;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.testng.annotations.BeforeMethod;

import static org.testng.Assert.*;

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
        User user=new User();
        user.setPassword("123456");
        user.setUid("15189801203");
        User user1=userMapper.findUserById("123456");
        System.out.println(user1.getAvatar().split("/")[2]);
    }
}