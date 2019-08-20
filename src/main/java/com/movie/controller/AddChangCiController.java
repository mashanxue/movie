package com.movie.controller;

import com.movie.entity.Changci;
import com.movie.service.AddChangCiService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class AddChangCiController {
    @Autowired
    public AddChangCiService addChangCiService;
    @RequestMapping("/addChangCi")
    public ModelAndView addChangCi(Changci changci){
        ModelAndView mv = new ModelAndView();
        addChangCiService.addChangCi(changci);
        mv.setViewName("success");
        return mv;
    }
}
