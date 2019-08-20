package com.movie.mapper;

import com.movie.entity.Movies;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface UpdateMoviesMapper {
    /**
     * 修改电影信息
     * **/
    public void updateMovies(Movies movies);
}
