package com.movie.controller;

import com.movie.entity.Movies;
import com.movie.service.DeleteMoviesService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class DeleteMoviesController {
    @Autowired
    public DeleteMoviesService deleteMoviesService;
    @RequestMapping("/deleteMovies")
    public ModelAndView deleteMovies(Movies movies){
        ModelAndView mv = new ModelAndView();
        deleteMoviesService.deleteMovies(movies);
        mv.setViewName("success");
        return mv;
    }
}
