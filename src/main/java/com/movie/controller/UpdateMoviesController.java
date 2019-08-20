package com.movie.controller;

import com.movie.entity.Movies;
import com.movie.service.UpdateMoviesService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class UpdateMoviesController {
    @Autowired
    public UpdateMoviesService updateMoviesService;
    @RequestMapping("/updateMovies")
    public ModelAndView updateMovies(Movies movies){
        ModelAndView mv = new ModelAndView();
        updateMoviesService.updateMovies(movies);
        mv.setViewName("success");
        return mv;
    }

}
