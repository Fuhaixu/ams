package com.software.controller;

import com.software.entity.Staff;
import com.software.entity.User;
import com.software.services.OrderService;
import com.software.services.StaffService;
import com.software.services.UserService;
import com.software.vo.LoginCommand;
import com.software.vo.ManagerPro;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.jws.WebParam;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;

/*管理员登录控制器*/
@Controller
@RequestMapping("/admin")
public class AdminController {

    @Autowired
    private StaffService staffService;
    @Autowired
    private OrderService orderService;
    @RequestMapping("/login")
    public String adminPage(){

        return "admin/login";
    }
    @RequestMapping("/index")
    public ModelAndView adminIndex(){
        ModelAndView mv=new ModelAndView("admin/index");
        mv.addObject("managerPros",orderService.queryAllManagerpro());
        return mv;
    }
    @RequestMapping("/manager")
    public String managerPro(){
        return "admin/managerPro";
    }
    @RequestMapping("/sign_in")
    public ModelAndView sign_in(HttpSession session, Staff staff){
        ModelAndView mv=null;
        if(staffService.isValid(staff)){
            mv=new ModelAndView("admin/index");
            List<ManagerPro> managerPros=orderService.queryAllManagerpro();
            mv.addObject("managerPros",managerPros);
            session.setAttribute("staff",staff);
        }else{
            mv=new ModelAndView("admin/login");
            mv.addObject("error","帐号或者密码错误");
        }
        return mv;
    }
    @RequestMapping("/managerPro")
    public ModelAndView manager(String oID,HttpSession session) {
        ModelAndView mav=new ModelAndView("admin/managerPro");
        ManagerPro mp=orderService.queryManproByOid(oID);
        mav.addObject("managerPro",mp);
        session.setAttribute("mp",mp);
        return mav;
    }
    @RequestMapping("/manager/update")
    public ModelAndView managerUpdate(ManagerPro managerPro,HttpSession session){
        ModelAndView mav=new ModelAndView("redirect:/admin/index");
        ManagerPro mp=(ManagerPro)session.getAttribute("mp");
        mp.setCost(managerPro.getCost());
        mp.setBreak_even(managerPro.getBreak_even());
        mp.setInterval(managerPro.getInterval());
        mp.setRes(managerPro.getRes());
        orderService.updateManpro(mp);
        return mav;
    }

    @RequestMapping("/manager/{res}")
    public ModelAndView orderQueryByType(@PathVariable("res") int res){
        ModelAndView mav=new ModelAndView("admin/index");
        List<ManagerPro> mps=orderService.queryManproByRes(res);
        mav.addObject("managerPros",mps);
        return mav;
    }
    @RequestMapping("/query")
    public ModelAndView orderQuery(String kw){
        ModelAndView mv=new ModelAndView("admin/index");
        List<ManagerPro> list1=orderService.queryManproByUserName(kw);
        List<ManagerPro> mps=new ArrayList<>();
        if(list1.size()!=0){
            for(ManagerPro mp:list1){
                mps.add(mp);
            }
        }else{
            List<ManagerPro> list2=orderService.queryManproByUserName(kw);
            if(list2.size()!=0){
                for(ManagerPro mp:list2){
                    mps.add(mp);
                }
            }
        }

        mv.addObject("managerPros",mps);

        return mv;
    }
}
