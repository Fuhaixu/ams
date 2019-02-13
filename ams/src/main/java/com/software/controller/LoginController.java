package com.software.controller;


import com.software.vo.LoginCommand;
import com.software.entity.User;
import com.software.services.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class LoginController {

    @Autowired
    private UserService userService;

    @RequestMapping("/sign_in")
    public ModelAndView login(Model model, LoginCommand loginCommand) {
        String status=userService.isValid(loginCommand);
        ModelAndView modelAndView=null;
        if(status.equals("True")) {
            return new ModelAndView("index");
        }else{
            modelAndView=new ModelAndView("login");
            modelAndView.addObject("status",status);
        }
        return modelAndView;
    }

    @RequestMapping("/sign_up")
    public String register(Model model){

        return "redirect:/login";
    }
}
