package com.software.controller;

import com.software.entity.User;
import com.software.services.UserService;
import com.software.vo.LoginCommand;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;

/*管理员登录控制器*/
@RequestMapping("/admin")
public class AdminController {

    @Autowired
    private UserService userService;
    @RequestMapping("/login")
    public String adminPage(){
        return "admin/login";
    }

    @RequestMapping("/sign_in")
    public ModelAndView sign_in(HttpSession session, LoginCommand loginCommand){
        String status=userService.isValid(loginCommand);
        ModelAndView mv=null;
        if(status.equals("True")) {
            User user=userService.queryUserById(loginCommand.getUid());
            session.setAttribute("user",user);
            mv=new ModelAndView("admin/index");
        }else{
            mv=new ModelAndView("login");
            mv.addObject("status",status);
        }
        return mv;
    }

}
