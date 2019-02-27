package com.software.services;

import com.software.mapper.TestMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class TestService {
    @Autowired
    private TestMapper testMapper;

    public void addTestById(String uid,int feer,int greed,int exp,int type){
        testMapper.insertTest(uid,feer,greed,exp,type);
    }
    public boolean hasTest(String uid){
        return testMapper.countTestById(uid)>=1;
    }
}
