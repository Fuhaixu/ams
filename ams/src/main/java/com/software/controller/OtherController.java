package com.software.controller;


import com.software.entity.User;
import com.software.mapper.po.TestPo;
import com.software.services.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;


@Controller
@RequestMapping("/test")
public class OtherController {
    @Autowired
    private UserService userService;
    @RequestMapping("/score")
    public ModelAndView testScore(HttpSession session){
        User user=(User)userService.queryUserById("123456");
        session.setAttribute("user",user);
        ModelAndView mv=new ModelAndView("score");
        TestPo testPo=new TestPo(10,100,100);
        System.out.println(user);
        mv.addObject("test",testPo);
        return mv;
    }

    @RequestMapping("/face")
    public String testFace(){
        return "face";
    }
}
