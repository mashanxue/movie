package com.movie.mapper;

import com.movie.entity.Movies;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface AddMovieMapper {
    /**
     * 添加电影信息
     */
    public void addMovie(Movies movies);
}
