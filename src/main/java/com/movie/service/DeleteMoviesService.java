package com.movie.service;

import com.movie.entity.Movies;
//删除电影信息
public interface DeleteMoviesService {
    /**
     * 删除电影信息
     * **/
    public void deleteMovies(Movies movies);
}
