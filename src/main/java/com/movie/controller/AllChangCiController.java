package com.movie.controller;

import com.movie.entity.Changci;
import com.movie.service.AllChangCiServiceById;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
public class AllChangCiController {
    @Autowired
    public AllChangCiServiceById allChangCiServiceById;

    @RequestMapping("/allChangci")
    @ResponseBody
    public List<Changci> allChangci(Changci Changci, Integer changtingId, Model model) {
        List<Changci> list3 = allChangCiServiceById.allChangci(changtingId);
//        model.addAttribute("list3", list3);
//        String jsonString2 = JSON.toJSONString(list3);
//        System.out.println(jsonString2);
        return list3;
    }
}
