package com.movie.controller;


import com.movie.entity.Changci;
import com.movie.service.ChangeChangCiService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class ChangeChangCiController {
    @Autowired
    public ChangeChangCiService changeChangCiService;
    @RequestMapping("/changeChangCi")
    public ModelAndView changeChangCi(Changci changci){
        ModelAndView mv = new ModelAndView();
        changeChangCiService.changeChangCi(changci);
        mv.setViewName("success");
        return mv;
    }
}
