package com.movie.controller;

import com.movie.service.DeleteChangTingService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class DeleteChangTingController {
    @Autowired
    public DeleteChangTingService deleteChangTingService;
    @RequestMapping("/deleteChangTing")
    public ModelAndView deleteChangTing(Integer changTingId){
        ModelAndView mv = new ModelAndView();
        deleteChangTingService.deleteChangTing(changTingId);
        mv.setViewName("success");
        return mv;
    }
}
