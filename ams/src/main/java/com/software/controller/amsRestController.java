package com.software.controller;

import com.software.services.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.Map;


@RestController
public class amsRestController {
    @Autowired
    UserService userService;

    @RequestMapping("/check_tel")
    @ResponseBody
    public boolean check_tel(@RequestBody String tel){

        return userService.hasTel(tel);
    }
}
