package com.movie.controller;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.movie.entity.Customer;
import com.movie.service.YwxService;
import com.zhenzi.sms.ZhenziSmsClient;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Random;

@Controller
public class YwxController {

    @Autowired
    private YwxService ycfService;

    //查看电影
    @RequestMapping("Look")
    public ModelAndView lookdall() {
        ModelAndView model=new ModelAndView();
        model.addObject("scc",ycfService.LookAll());
        model.setViewName("look");
        return model;
    }

    //根据Id查看电影详情
    @RequestMapping("xiangqing")
    public String LookOne(Model model, int moviesId) {
        model.addAttribute("scc", ycfService.LookOne(moviesId));
        return "lookOne";
    }


    @RequestMapping("/sendSms")
    @ResponseBody
    public Object sendSms(HttpServletRequest request, String phone) {
        try {
            JSONObject json = null;
            //生成6位验证码
            String verifyCode = String.valueOf(new Random().nextInt(899999) + 100000);
            //发送短信
            ZhenziSmsClient client = new ZhenziSmsClient("https://sms_developer.zhenzikj.com", "102119", "4adf806b-4efd-4959-8894-b46be4ddb9af");
            String result = client.send(phone, "您的验证码为:" + verifyCode + "，该码有效期为5分钟，该码只能使用一次！9567电影网");
            System.out.println(phone + "   " + verifyCode + "    " + result);
            json = JSONObject.parseObject(result);
            if (json.getIntValue("code") != 0) {
                return "fail";
            }
            //将验证码存到session中,同时存入创建时间
            //以json存放，这里使用的是阿里的fastjson
            HttpSession session = request.getSession();
            json = new JSONObject();
            json.put("verifyCode", verifyCode);
            json.put("createTime", System.currentTimeMillis());
            // 将认证码存入SESSION
            request.getSession().setAttribute("verifyCode", json);
            return "success";
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }


    /*员工注册时验证帐户是否存在*/
    @RequestMapping("/checkingCount")
    @ResponseBody
    public void checkingCount(HttpServletResponse response, String phone) {
        String tel = phone;
        int count = ycfService.checkingCount(tel);
        try {
            String jsonString = JSON.toJSONString(count);
            PrintWriter writer = null;
            writer = response.getWriter();
            writer.print(jsonString);
            writer.close();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }


    /*员工注册时验证验证码是否正确*/
    @RequestMapping("/checkingCode")
    @ResponseBody
    public void checkingCode(HttpServletResponse response, HttpServletRequest request, String verifyCode) {
        JSONObject Code = (JSONObject) request.getSession().getAttribute("verifyCode");
        String code = Code.getString("verifyCode");
        String isRegister = null;
        System.out.println(code + "     " + verifyCode);
        if (code.equals(verifyCode)) {
            isRegister = "true";
            try {
                String jsonString = JSON.toJSONString(isRegister);
                PrintWriter writer = null;
                writer = response.getWriter();
                writer.print(jsonString);
                writer.close();
            } catch (IOException e) {
                e.printStackTrace();
            }

        } else {
            try {
                String jsonString = JSON.toJSONString(isRegister);
                PrintWriter writer = null;
                writer = response.getWriter();
                writer.print(jsonString);
                writer.close();
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
    }

    //注册
    @PostMapping("zc")
    public String zc(Model model, String customerName, String customerPassword, String phone) {
        Customer customer = new Customer();
        customer.setCustomerName(customerName);
        customer.setCustomerPassword(customerPassword);
        customer.setPhone(phone);
        ycfService.zc(customer);
        return "indexAction";
    }

    //登录
    @RequestMapping("/login")
    public ModelAndView login(ModelAndView mvAndView, Customer customer, HttpServletRequest request, String customerName, String customerPassword) {
        Customer customer1 = new Customer();
        customer1.setCustomerName(customerName);
        customer1.setCustomerPassword(customerPassword);
        HttpSession session = request.getSession();
        session.setAttribute("customerName",customerName);
        Integer customerId = customer1.getCustomerId();
        session.setAttribute("customerId",customerId);
        Customer customer2 = ycfService.login(customer1);
        if (customer2 != null) {
           return lookdall();
        } else {
            request.setAttribute("errow", "用户名或密码错误请重新登录");
            mvAndView.setViewName("login");
        }
        return mvAndView;
    }
}
