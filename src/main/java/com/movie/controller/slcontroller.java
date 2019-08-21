package com.movie.controller;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.movie.entity.Admin;
import com.movie.entity.Yingyuan;
import com.movie.service.Adminservice;
import org.apache.catalina.Session;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.IncorrectCredentialsException;
import org.apache.shiro.authc.UnknownAccountException;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.subject.Subject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
public class slcontroller {

    ModelAndView model;

    @Autowired
    Adminservice adminservice;

    @RequestMapping("testlogin")
   public String testlogin(Admin admin){

        Subject subject= SecurityUtils.getSubject();

        UsernamePasswordToken token=new UsernamePasswordToken(admin.getAdminname(),admin.getAdminpassword());
    try {
        subject.login(token);
    }catch (UnknownAccountException e){
        model.addObject("该用户并不存在");
    }catch (IncorrectCredentialsException e){
        System.out.println("mimacuowu");
    }



        return "managerindex";
    }

    @RequestMapping("adminlogin")
    public void login(Admin admin){
        System.out.println(adminservice.adminlogin(admin));
    }
    @RequestMapping("selectallmovies")
    public void selectallmovies(){
       adminservice.selectallmovie();
    }
    @RequestMapping("findallyingyuan")
    public String findallyingyuan(Integer pageNo, Model model){
            if(pageNo==null){
                pageNo=1;
            }


        PageHelper.startPage(pageNo,4);
       List<Yingyuan> list=adminservice.findallyingyuan();

        PageInfo<Yingyuan> pageInfo=new PageInfo(list);

        model.addAttribute("pageinfo",pageInfo);
        return "manageryyguanli";
    }
    @RequestMapping("findallyingyuanajax")
    @ResponseBody
    public PageInfo findallyingyuanajax(Integer pageNo){
        System.out.println("findallyingyuanajax"+pageNo);
        if(pageNo==null){
            pageNo=1;
        }


        PageHelper.startPage(pageNo,4);
        List<Yingyuan> list=adminservice.findallyingyuan();

        PageInfo<Yingyuan> pageInfo=new PageInfo(list);

        return pageInfo;
    }

    @RequestMapping("/specialfind")
    @ResponseBody
    public List<Yingyuan> specialfind(Yingyuan yingyuan){

        System.out.println(adminservice.findspecialyingyuan(yingyuan));
        return adminservice.findspecialyingyuan(yingyuan);
    }

    @RequestMapping("/insertyingyuan")

    public String insertyingyuan(Yingyuan yingyuan,Model model){

        adminservice.insertyingyuan(yingyuan);
        return findallyingyuan(null,model);
    }

    @RequestMapping("/deleteyingyuan")

    public String deleteyingyuan(Integer id,Model model){
         adminservice.deleteyingyuan(id);
        return findallyingyuan(null, model);
    }

    @RequestMapping("/updateyingyuan")

    public String updateyingyuan(Yingyuan yingyuan,Model model){
        System.out.println(yingyuan);
         adminservice.updateyingyuan(yingyuan);
        return findallyingyuan(null, model);
    }

    @RequestMapping("/selectadmin")
    public String selectadmin(Integer id, Model model){


        model.addAttribute("adminlist",adminservice.selectadmin(id));
        return "shiromanager";
    }
    @RequestMapping("/addshiro")
    public String addshiro(HttpServletRequest request,String[] authority,Model model){
        String adminid=  request.getParameter("adminid");

        if(authority==null){
            request.getSession().setAttribute("authority",null);
        }else {
            request.getSession().setAttribute("authority",authority);
        }




        return findallyingyuan(null, model);
    }

}
