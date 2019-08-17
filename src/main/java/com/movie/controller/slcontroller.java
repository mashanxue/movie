package com.movie.controller;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.movie.entity.Admin;
import com.movie.entity.Yingyuan;
import com.movie.service.Adminservice;
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

import java.security.Security;
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

    }catch (IncorrectCredentialsException e){
        System.out.println("mimacuowu");
    }


        return "managerindex";
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
        return adminservice.findspecialyingyuan(yingyuan);
    }

}
