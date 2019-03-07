package com.software.mapper;

import com.software.entity.Order;
import com.software.entity.Staff;
import org.junit.Before;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import java.util.List;

import static org.junit.Assert.*;


public class StaffMapperTest {
    private ApplicationContext applicationContext;

    @Before
    public void setUp() throws Exception {
        applicationContext=new
                ClassPathXmlApplicationContext("classpath:applicationContext-mybatis.xml");

    }
    @Test
    public void TestFindById() {
        StaffMapper staffMapper=(StaffMapper) applicationContext.getBean("staffMapper");
        Staff staff=staffMapper.findStaffBySid("1001");
        System.out.println(staff.getPwd());
    }
}