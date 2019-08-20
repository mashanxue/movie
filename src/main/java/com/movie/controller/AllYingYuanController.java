package com.movie.controller;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.movie.entity.Yingyuan;
import com.movie.service.AllYingYuanService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller
public class AllYingYuanController {
    @Autowired
    public AllYingYuanService allYingYuanService;
    @RequestMapping("/allyingyuan")
    public String allyingyuan(Yingyuan yingyuan , Model model, @RequestParam(value="PageNum",defaultValue="1")Integer PageNum,
                               @RequestParam(value="PageSize",defaultValue="4")Integer PageSize) {
        PageHelper.startPage(PageNum,4);
        List<Yingyuan> list = allYingYuanService.allYingYuan();
        PageInfo<Yingyuan> pageInfo = new PageInfo<Yingyuan>(list);
//        String jsonString = JSON.toJSONString(list);
        model.addAttribute("pageInfo", pageInfo);
        model.addAttribute("list", list);
        return "allyingyuan";
    }
}
