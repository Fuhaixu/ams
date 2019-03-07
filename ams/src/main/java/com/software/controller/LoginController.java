package com.software.controller;


import com.software.mapper.TestMapper;
import com.software.services.TestService;
import com.software.vo.LoginCommand;
import com.software.entity.User;
import com.software.services.UserService;
import org.apache.tools.ant.taskdefs.condition.Http;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.jws.WebParam;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

@Controller
public class LoginController {

    @Autowired
    private UserService userService;
    @Autowired
    private TestService testService;
    //登录
    @RequestMapping("/sign_in")
    public ModelAndView login(LoginCommand loginCommand, HttpServletRequest request) {
        String status=userService.isValid(loginCommand);
        HttpSession session=request.getSession();
        ModelAndView mv=null;
        if(status.equals("True")) {
            User user=userService.queryUserById(loginCommand.getUid());
            session.setAttribute("user",user);
            //如果没有测试记录跳转到测试界面
            if(!testService.hasTest(user.getUid())){
                mv=new ModelAndView("redirect:/question/answer");
            }else mv=new ModelAndView("index");
        }else{
            //有测试跳转到登录界面
            mv=new ModelAndView("login");
            mv.addObject("status",status);
        }
        return mv;
    }
    //默认的第一张头像
    private final static String firstAvatar="/images/avatar.png";


    //注册
    @RequestMapping("/sign_up")
    public ModelAndView register(User user, HttpSession session){
        ModelAndView mv=new ModelAndView();
        //如果注册的手机号已经存在，不允许重复注册
        if(userService.hasTel(user.getUid())){
            mv.addObject("msg","手机号已存在");
            mv.setViewName("register");
        }else{
            user.setAvatar(firstAvatar);
            userService.addUser(user);
            session.setAttribute("user",user);
            mv.setViewName("redirect:/sign_up_success");
        }
        return mv;
    }


}
