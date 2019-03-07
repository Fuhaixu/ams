package com.software.controller;

import com.software.entity.User;
import com.software.mapper.ProjectMapper;
import com.software.services.ProjectService;
import com.software.services.UserService;
import com.software.vo.OrderProject;
import org.apache.commons.io.IOUtils;
import org.apache.tools.ant.taskdefs.condition.Http;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.FileSystemResource;
import org.springframework.core.io.Resource;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.jws.WebParam;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.beans.MethodDescriptor;
import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.List;
import java.util.UUID;

/*用户身份信息控制器*/
@Controller
@RequestMapping("/account")
public class AccountController {
    private static final String basePath="src/main/webapp/resources/images/upload/";
//    String localPath="D:\\File\\";
    String localPath="/home/File/";
    @Autowired
    UserService userService;
    @Autowired
    private ProjectService projectService;
    @RequestMapping("/")
    public ModelAndView account(HttpSession session){
        ModelAndView mav=new ModelAndView("account");
        User user=(User)session.getAttribute("user");
        List<OrderProject> ops=projectService.queryOrderProjectsByUid(user.getUid());
        mav.addObject("orderProjects", ops);
        float sum=0;
        for (OrderProject op:ops)sum+=op.getCost();
        mav.addObject("sum",sum);
        return mav;

    }
    @RequestMapping("/upload/Face")
    public ModelAndView upload(HttpSession session, MultipartFile file, RedirectAttributes redirectAttrs) throws Exception{
        if(file.isEmpty()||!isImage(file)) {
            redirectAttrs.addFlashAttribute("error","错误文件，请上传一张图片");
            return new ModelAndView("redirect:/account/");
        }
        String sqlPath=null;
        String filename=null;
        String uuid= UUID.randomUUID().toString().replaceAll("-","");
        String contentType=file.getContentType();
        String suffix=contentType.substring(contentType.indexOf("/")+1);
        filename=uuid+"."+suffix;
        file.transferTo(new File(localPath+filename));
        sqlPath="/images/"+filename;
        User user=(User)session.getAttribute("user");
        //删除源文件
        File srcFile=new File(localPath+user.getAvatar().split("/")[2]);
        if(srcFile!=null&&!isFirstAvatar(user.getAvatar())){
            srcFile.delete();
        }
        //更新数据
        userService.updateAvatar(user.getUid(),sqlPath);
        user.setAvatar(sqlPath);
        ModelAndView mv=new ModelAndView("redirect:/account/");
        return mv;
    }

    private boolean isImage(MultipartFile file){
        return file.getContentType().startsWith("image");
    }

    private static String getFileExtension(String name){
        return name.substring(name.indexOf("."));
    }

    String firstAvatar="/images/avatar.png";
    private boolean isFirstAvatar(String avatar){

        if(avatar.equals(firstAvatar))return true;
        else return false;
    }

    @RequestMapping("/saveInfo")
    public ModelAndView saveInfo(User user,HttpSession session){
        String srcUid=((User)(session.getAttribute("user"))).getUid();
        userService.updateUserInfo(user,srcUid);
        if(!srcUid.equals(user.getUid()))
        userService.updateUserPwd(user,srcUid);
        session.setAttribute("user",userService.queryUserById(user.getUid()));
        ModelAndView mv=new ModelAndView("redirect:/account/");
        return mv;
    }

    @RequestMapping("/changePwd")
    public ModelAndView changePwd(String newPwd,HttpSession session){
        User user=(User)session.getAttribute("user");
        ModelAndView mav=new  ModelAndView("redirct:/account/");
        if(userService.isValid(user.getUid(),user.getPassword())){
            userService.updateUserPwd(user,newPwd);
        }else{
            mav.addObject("error","输入的信息不正确");
        }
        return mav;
    }

    @RequestMapping("/getPwd")
    public ModelAndView accountGetPwd(HttpSession session,User user){
        ModelAndView mav=new ModelAndView("resetPwd");
        if(userService.isValid(user.getUid(),user.getCid(),user.getName())){
            session.setAttribute("user",userService.queryUserById(user.getUid()));
        }else {
            mav.setViewName("getPwd");
            mav.addObject("error","用户信息不正确");
        }
        return mav;

    }

    @RequestMapping("/resetPwd")
    public ModelAndView accountGetPwd(HttpSession session,String pwd){
        ModelAndView mav=new ModelAndView("redirect:/login");
        userService.updateUserPwd((User)session.getAttribute("user"),pwd);
        mav.addObject("ts","修改密码成功");
        return mav;
    }
}
