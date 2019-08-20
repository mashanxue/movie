package com.movie.service;

import com.movie.entity.Movies;

import java.util.List;

//显示所有电影信息
public interface AllMoviesService {
    /**
     * 显示所有电影信息
     * */
    public List<Movies> allMovies();
    /**
     * 根据类型查电影信息
     * */
    public List<Movies> allMoviesByType(Movies movies);
    /**
     * 根据名字查电影信息
     * */
    public List<Movies> allMoviesByName(Movies movies);
}
