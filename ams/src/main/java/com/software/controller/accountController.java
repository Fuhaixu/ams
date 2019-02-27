package com.software.controller;

import com.software.entity.User;
import com.software.services.UserService;
import org.apache.commons.io.IOUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.FileSystemResource;
import org.springframework.core.io.Resource;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.servlet.http.HttpSession;
import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.UUID;

@Controller
@RequestMapping("/account")
public class accountController {
    private static final String basePath="src/main/webapp/resources/images/upload/";
    String localPath="D:\\File\\";
    @Autowired
    UserService userService;
    @RequestMapping("/")
    public String account(){
        return "account";
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

    String firstAvatar="/images/avatar.jpg";
    private boolean isFirstAvatar(String avatar){

        if(avatar.equals(firstAvatar))return true;
        else return false;
    }
}
