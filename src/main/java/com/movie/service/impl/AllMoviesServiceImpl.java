package com.movie.service.impl;

import com.movie.entity.Movies;
import com.movie.mapper.AllMoviesMapper;
import com.movie.service.AllMoviesService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

//显示所有电影信息
@Service
public class AllMoviesServiceImpl implements AllMoviesService {
    @Autowired
    public AllMoviesMapper allMoviesMapper;
    /**
     * 显示所有电影信息
     * */
    @Override
    public List<Movies> allMovies(){
        return allMoviesMapper.allMovies();
    }
    /**
     * 根据类型查电影信息
     * */
    @Override
    public List<Movies> allMoviesByType(Movies movies){
        return allMoviesMapper.allMoviesByType(movies);
    }
    /**
     * 根据名字查电影信息
     * */
    @Override
    public List<Movies> allMoviesByName(Movies movies){
        return allMoviesMapper.allMoviesByName(movies);
    }
}
