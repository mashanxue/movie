package com.movie.controller;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.movie.entity.Movies;
import com.movie.service.AllMoviesService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller
public class AllMoviesController {
    @Autowired
    public AllMoviesService allMoviesService;
//    @RequestMapping("/allMovies")
//    public ModelAndView allMovies(){
//        ModelAndView mv = new ModelAndView();
//        List<Movies> list = allMoviesService.allMovies();
//        mv.addObject("list",list);
//        mv.setViewName("allmovies");
//        return mv;
//    }
    @RequestMapping("/allMovies")
    public String allMovies(Movies movies , Model model, @RequestParam(value="PageNum",defaultValue="1")Integer PageNum,
                                   @RequestParam(value="PageSize",defaultValue="4")Integer PageSize) {
        PageHelper.startPage(PageNum,4);
        List<Movies> list = allMoviesService.allMovies();
        PageInfo<Movies> pageInfo = new PageInfo<Movies>(list);
        model.addAttribute("pageInfo", pageInfo);
        model.addAttribute("list", list);
        return "allmovies";
    }
    @RequestMapping("/allMoviesByType")
    public String allMoviesByType(Movies movies , Model model, @RequestParam(value="PageNum",defaultValue="1")Integer PageNum,
                            @RequestParam(value="PageSize",defaultValue="4")Integer PageSize) {
        PageHelper.startPage(PageNum,4);
        List<Movies> list = allMoviesService.allMoviesByType(movies);
        PageInfo<Movies> pageInfo = new PageInfo<Movies>(list);
        model.addAttribute("pageInfo", pageInfo);
        model.addAttribute("list", list);
        return "searchmoviesbytypeandname";
    }
    @RequestMapping("/allMoviesByName")
    public String allMoviesByName(Movies movies , Model model, @RequestParam(value="PageNum",defaultValue="1")Integer PageNum,
                                  @RequestParam(value="PageSize",defaultValue="4")Integer PageSize) {
        PageHelper.startPage(PageNum,4);
        List<Movies> list = allMoviesService.allMoviesByName(movies);
        PageInfo<Movies> pageInfo = new PageInfo<Movies>(list);
        model.addAttribute("pageInfo", pageInfo);
        model.addAttribute("list", list);
        return "searchmoviesbytypeandname";
    }
}
