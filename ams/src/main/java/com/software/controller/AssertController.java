package com.software.controller;

import com.software.entity.Project;
import com.software.entity.User;
import com.software.mapper.po.TestPo;
import com.software.services.ProjectService;
import com.software.services.TestService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.jws.WebParam;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;

/*资金项目，提交订单等的控制器*/
@Controller
@RequestMapping("/assert")
public class AssertController {
    @Autowired
    private ProjectService projectService;
    @Autowired
    private TestService testService;
    @RequestMapping("/")
    public String assertPage(){
        return "assert";
    }

    @RequestMapping("/order")
    public ModelAndView order(){
        ModelAndView mav=new ModelAndView("assert");
        return mav;
    }

    @RequestMapping("/fund/{type}")
    public ModelAndView fundByType(@PathVariable("type") String type,
                                   HttpSession session){
        ModelAndView mav=new ModelAndView("assert/fund");
        User user=(User) session.getAttribute("user");
        List<Project> projects= new ArrayList<Project>();
        TestPo testPo=testService.queryTestById(user.getUid());
        mav.addObject("testPo",testPo);
        if(type.equals("all")){
            projects=projectService.queryProjects();
        }else if(type.equals("recommend")){
            if(testPo.getUs_type()==-1){
                //风险厌恶型
                //货币基金，债券，长线外汇投资，价值型股票投资
                List<Project> bonds=projectService.queryProjects(Project.Bond);
                List<Project> funds=projectService.queryProjects(Project.Fund);
                List<Project> exchanges=projectService.queryProjects(Project.Exchange);
                List<Project> equities=projectService.queryProjects(Project.Equity);
                for(Project project:bonds)projects.add(project);
                for(Project project:exchanges)projects.add(project);
                for(Project project:equities)projects.add(project);
                for(Project project:funds)projects.add(project);
            }else if (testPo.getUs_type()==0){
                //风险中立型
                //股票短线交易，超短线外汇投机交易，短线期货交易，期权交易，股权投资
                List<Project> equities=projectService.queryProjects(Project.Equity);
                List<Project> exchanges=projectService.queryProjects(Project.Exchange);
                List<Project> futures=projectService.queryProjects(Project.Futures);
                List<Project> options=projectService.queryProjects(Project.Option);
                for(Project project:equities)projects.add(project);
                for(Project project:exchanges)projects.add(project);
                for(Project project:futures)projects.add(project);
                for(Project project:options)projects.add(project);
            }else if (testPo.getUs_type()==1){
                //风险偏好型
                //非货币型基金，中长线外汇交易，波段股票交易，中长线期货交易
                List<Project> funds=projectService.queryProjects(Project.Fund);
                List<Project> exchanges=projectService.queryProjects(Project.Exchange);
                List<Project> equities=projectService.queryProjects(Project.Equity);
                List<Project> futures=projectService.queryProjects(Project.Futures);
                for(Project project:equities)projects.add(project);
                for(Project project:exchanges)projects.add(project);
                for(Project project:futures)projects.add(project);
                for(Project project:funds)projects.add(project);
            }
        }else{
            int t=Integer.parseInt(type);
            projects=projectService.queryProjects(t);
        }
        mav.addObject("projects",projects);
        return mav;
    }
}
