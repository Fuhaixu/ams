package com.software.dao;


import com.software.entity.User;
import com.software.mapper.UserMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

/**
 * @Author: FHX
 * @Date: 2019/2/12 12:53
 * @Version 1.0
 */

@Repository
public class UserDao {

    @Autowired
    private UserMapper userMapper;

    public User findUserById(String uid){
        return userMapper.findUserById(uid);
    }

    public String findUserPwd(String uid){
        return userMapper.findPwdById(uid);
    }
    public int countUser(String uid){
        return userMapper.countUserById(uid);
    }
}
