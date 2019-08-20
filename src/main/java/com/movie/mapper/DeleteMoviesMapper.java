package com.movie.mapper;

import com.movie.entity.Movies;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface DeleteMoviesMapper {
    /**
     * 删除电影信息
     * **/
    public void deleteMovies(Movies movies);
}
