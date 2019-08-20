package com.movie.service.impl;

import com.movie.entity.Movies;
import com.movie.mapper.UpdateMoviesMapper;
import com.movie.service.UpdateMoviesService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

//修改电影信息
@Service
public class UpdateMoviesServiceImpl implements UpdateMoviesService {
    @Autowired
    public UpdateMoviesMapper updateMoviesMapper;
    /**
     * 修改电影信息
     * **/
    public void updateMovies(Movies movies){
        updateMoviesMapper.updateMovies(movies);
    }
}
