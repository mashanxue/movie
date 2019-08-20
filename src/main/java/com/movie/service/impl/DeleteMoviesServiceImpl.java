package com.movie.service.impl;

import com.movie.entity.Movies;
import com.movie.mapper.DeleteMoviesMapper;
import com.movie.service.DeleteMoviesService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
//删除电影信息
@Service
public class DeleteMoviesServiceImpl implements DeleteMoviesService {
    @Autowired
    public DeleteMoviesMapper deleteMoviesMapper;
    /**
     * 删除电影信息
     * **/
    public void deleteMovies(Movies movies){
        deleteMoviesMapper.deleteMovies(movies);
    }
}
