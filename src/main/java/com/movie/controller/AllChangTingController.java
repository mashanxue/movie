package com.movie.controller;

import com.alibaba.fastjson.JSON;
import com.movie.entity.Changting;
import com.movie.service.AllChangTingByIdService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
public class AllChangTingController {
    @Autowired
    public AllChangTingByIdService allChangTingByIdService;
    @RequestMapping("/allchangting")
    @ResponseBody
    public String allchangting(Changting changting ,Integer yingYuanId, Model model) {
        List<Changting> list2 = allChangTingByIdService.allChangTing(yingYuanId);
        model.addAttribute("list2", list2);
        String jsonString = JSON.toJSONString(list2);
//        model.addAttribute("jsonString", jsonString);
//        System.out.println(jsonString);
        return  jsonString;
    }
}
