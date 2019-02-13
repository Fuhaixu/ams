package com.software.mapper;

import com.software.entity.User;

/**
 * @Author: FHX
 * @Date: 2019/2/12 14:06
 * @Version 1.0
 */
public interface UserMapper {
    //根据id查询用户信息
    public abstract User findUserById(String uid);
    //根据id查用户密码,pwd为null用户不存在，pwd不正确返回登录失败
    public abstract String findPwdById(String uid);
    public abstract int countUserById(String uid);
}
