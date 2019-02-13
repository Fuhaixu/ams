package com.software.services;

import com.software.dao.UserDao;
import com.software.entity.User;
import com.software.vo.LoginCommand;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.Map;

/**
 * @Author: FHX
 * @Date: 2019/2/10 17:32
 * @Version 1.0
 */

@Service
public class UserService {

    @Autowired
    UserDao userDao;
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

}
