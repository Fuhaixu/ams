package com.software.mapper;

import com.software.entity.Project;
import com.software.mapper.po.TestPo;
import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import java.util.List;

import static org.junit.Assert.*;

public class ProjectMapperTest {
    private ApplicationContext applicationContext;

    @Before
    public void setUp() throws Exception {
        applicationContext=new
                ClassPathXmlApplicationContext("classpath:applicationContext-mybatis.xml");

    }
    @Test
    public void TestFindById() {
        ProjectMapper projectMapper = (ProjectMapper) applicationContext.getBean("projectMapper");

//        testMapper.insertTest("123",100,100,100);

        List<Project> projects = projectMapper.queryProjectForList();
        for (Project project : projects) {
            System.out.println(project.toString());
        }
    }
}
