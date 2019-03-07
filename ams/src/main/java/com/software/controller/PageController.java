package com.software.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class PageController {
    @RequestMapping("/getPwd")
    public String getPwd(){
        return "getPwd";
    }

    @RequestMapping("/register")
    public String register(){
        return "register";
    }

    @RequestMapping("/login")
    public String login(){
        return "login";
    }

    @RequestMapping("/score")
    public String score(){
        return "score";
    }
    @RequestMapping("/index")
    public ModelAndView index(){
        return new ModelAndView("index");
    }
    @RequestMapping("/sign_up_success")
    public String sign_up_success(){
        return "sign_up_success";
    }
}
