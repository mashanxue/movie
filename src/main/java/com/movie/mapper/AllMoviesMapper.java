package com.movie.mapper;

import com.movie.entity.Movies;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;
@Mapper
public interface AllMoviesMapper {
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
