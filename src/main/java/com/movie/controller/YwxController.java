package com.movie.controller;

import com.movie.entity.Customer;
import com.movie.service.YwxService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class YwxController {

@Autowired
    private YwxService ycfService;

    //查看电影
    @RequestMapping("Look")
    public String lookdall(Model model){
        model.addAttribute("scc", ycfService.LookAll());
        return "look";
    }

    //根据Id查看电影详情
    @RequestMapping("xiangqing")
    public String LookOne(Model model,int moviesId){
        model.addAttribute("scc", ycfService.LookOne(moviesId));
        return "lookOne";
    }
    //注册
    @RequestMapping("zc")
    public String zc(Model model,String customerName,String customerPassword,String phone){
        Customer customer=new Customer();
        customer.setCustomerName(customerName);
        customer.setCustomerPassword(customerPassword);
        customer.setPhone(phone);
        ycfService.zc(customer);
        return "indexAction";
    }
}
