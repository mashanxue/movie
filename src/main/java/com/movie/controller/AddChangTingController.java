package com.movie.controller;

import com.movie.entity.Changting;
import com.movie.service.AddChangTingService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class AddChangTingController {
    @Autowired
    public AddChangTingService addChangTingService;
    @RequestMapping("/addChangTing")
    public ModelAndView addChangTing(Changting changting){
        ModelAndView mv = new ModelAndView();
        addChangTingService.addChangTing(changting);
        mv.setViewName("success");
        return mv;
    }
}
