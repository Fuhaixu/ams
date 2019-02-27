package com.software.mapper;

import com.software.entity.User;
import org.apache.ibatis.annotations.Param;


public interface UserMapper {
    //根据id查询用户信息
    public abstract User findUserById(String uid);
    //根据id查用户密码,pwd为null用户不存在，pwd不正确返回登录失败
    public abstract String findPwdById(String uid);
    public abstract int countUserById(String uid);
    public abstract int insertUserLogin(User user);
    public abstract int insertUserInfo(User user);
    public abstract int updateUserLogin(@Param("user") User user,@Param("srcID") String srcID);
    public abstract int updateUserInfo(@Param("user") User user,@Param("srcID") String srcID);

    int insertUserScore(@Param("uid") String uid,
                        @Param("feer") int feer,
                        @Param("greed") int greed,
                        @Param("score") int score);
    int updateAvatar(@Param("avatar") String avatar,@Param("uid") String uid);
}
