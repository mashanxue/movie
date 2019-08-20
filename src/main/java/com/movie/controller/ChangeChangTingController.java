package com.movie.controller;

import com.movie.entity.Changting;
import com.movie.service.ChangeChangTingService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class ChangeChangTingController {
    @Autowired
    public ChangeChangTingService changeChangTingService;
    @RequestMapping("/changeChangTing")
    public ModelAndView changeChangTing(Changting changting){
        ModelAndView mv = new ModelAndView();
        changeChangTingService.changeChangTing(changting);
        mv.setViewName("success");
        return mv;
    }
}
