package com.software.mapper;

import com.software.entity.Order;
import com.software.entity.Project;
import com.software.util.DateUtil;
import com.software.vo.ManagerPro;
import org.junit.Before;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import java.sql.Timestamp;
import java.util.Date;
import java.util.List;
import java.util.UUID;

import static org.junit.Assert.*;


public class OrderMapperTest {
    private ApplicationContext applicationContext;

    @Before
    public void setUp() throws Exception {
        applicationContext=new
                ClassPathXmlApplicationContext("classpath:applicationContext-mybatis.xml");

    }
    @Test
    public void TestFindById() {
        OrderMapper orderMapper = (OrderMapper) applicationContext.getBean("orderMapper");
        List<ManagerPro> managerPros = orderMapper.queryManproByUserName("1");
        List<ManagerPro> mp2 = orderMapper.queryManproByPname("1");
        System.out.println(managerPros.size());
        System.out.println(mp2.size());

    }
}