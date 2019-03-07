package com.software.controller;

import com.software.entity.Order;
import com.software.entity.Project;
import com.software.entity.User;
import com.software.mapper.po.TestPo;
import com.software.services.OrderService;
import com.software.services.ProjectService;
import com.software.services.TestService;
import com.software.util.DateUtil;
import org.aspectj.weaver.ast.Or;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.client.support.HttpAccessor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.jws.WebParam;
import javax.servlet.http.HttpSession;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.UUID;

/*资金项目，提交订单等的控制器*/
@Controller
@RequestMapping("/assert")
public class AssertController {
    @Autowired
    private ProjectService projectService;
    @Autowired
    private TestService testService;
    @Autowired
    private OrderService orderService;
    @RequestMapping("/")
    public String assertPage(){
        return "assert";
    }
    //订单开始
    @RequestMapping("/order")
    public ModelAndView order(HttpSession session,int pID){
        User user=(User)session.getAttribute("user");
        String oid=UUID.randomUUID().toString().replaceAll("-","");
        Project project=(Project) projectService.queryProjectByPid(pID);
        ModelAndView mav=new ModelAndView("assert/order");
        Order order=new Order();
        order.setoID(oid);
        order.setpID(pID);
        order.setuID(user.getUid());
        order.setStart_time(DateUtil.dateToTime(new Date()));
        mav.addObject("order",order);
        mav.addObject("project",project);
        session.setAttribute("order",order);
        session.setAttribute("project",project);
        return mav;
    }
    //订单提交
    //interval,cost
    @RequestMapping("/order/pre")
    public ModelAndView orderAdd(HttpSession session, Order order,String stime){
        User user=(User) session.getAttribute("user");
        ModelAndView mav=new ModelAndView("assert/orderPre");
        //天数，花费，是否保本,开始时间
        order.setStart_time(new DateUtil().strToTimeStamp(stime));
        Order srcOrder=(Order)session.getAttribute("order");
        order.setoID(srcOrder.getoID());
        order.setuID(srcOrder.getuID());
        order.setpID(srcOrder.getpID());
        session.setAttribute("order",order);
        return mav;
    }
    //确认签名,
    @RequestMapping("/order/confirm")
    public ModelAndView confirm(HttpSession session){
        ModelAndView mav=new ModelAndView("/assert/confirm");
        return mav;
    }
    //添加订单入库
    @RequestMapping("/order/add")
    public ModelAndView orderAdd(HttpSession session){
        Order order=(Order) session.getAttribute("order");
        orderService.insertOrder(order);
        ModelAndView mav=new ModelAndView("redirect:/assert/fund/recommend");
        session.removeAttribute("project");
        session.removeAttribute("order");
        return mav;
    }
    //推荐不同类型的项目
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
