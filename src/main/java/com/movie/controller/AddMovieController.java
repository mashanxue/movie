package com.movie.controller;

import com.movie.entity.Movies;
import com.movie.service.AddMovieService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class AddMovieController {
    @Autowired
    public AddMovieService addMovieService;
    @RequestMapping("/addMovie")
    public ModelAndView addMovie(Movies movies){
        ModelAndView mv = new ModelAndView();
        addMovieService.addMovie(movies);
        mv.setViewName("success");
        return mv;
    }
}
