package com.software.services;

import com.software.dao.UserDao;
import com.software.entity.User;
import com.software.mapper.UserMapper;
import com.software.vo.LoginCommand;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.Map;


@Service
public class UserService {

    @Autowired
    UserDao userDao;
    @Autowired
    UserMapper userMapper;
    public String isValid(LoginCommand loginCommand){
        String pwd=userDao.findUserPwd(loginCommand.getUid());
        Map<String,String> map=new HashMap<String, String>();
        if(pwd!=null){
            if(pwd.equals(loginCommand.getPassword())){
               return "True";
            }else return "False";
        }
        return "Null";
    }

    public void addUser(User user){
        userDao.insertUserInfo(user);
        userDao.insertUserLogin(user);
    }

    public boolean hasTel(String tel){
        return userDao.countUser(tel)>0;
    }

    public User queryUserById(String uid){
        return userDao.findUserById(uid);
    }
    public int updateAvatar(String uid,String avatar){
        return userMapper.updateAvatar(avatar,uid);
    }
}
