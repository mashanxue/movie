package com.movie.controller;

import com.movie.service.DeleteChangCiService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class DeleteChangCiController {
    @Autowired
    public DeleteChangCiService deleteChangCiService;
    @RequestMapping("/deleteChangCi")
    public ModelAndView deleteChangCi(Integer changciId){
        ModelAndView mv = new ModelAndView();
        deleteChangCiService.deleteChangCi(changciId);
        mv.setViewName("success");
        return mv;
    }
}
