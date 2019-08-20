package com.movie.service.impl;


import com.movie.entity.Movies;
import com.movie.mapper.AddMovieMapper;
import com.movie.service.AddMovieService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

//添加电影信息
@Service
public class AddMovieServiceImpl implements AddMovieService {
	@Autowired
	public AddMovieMapper addMovieMapper;
	/**
	 * 添加电影信息
	 */
	@Override
	 public void addMovie(Movies movies){
		addMovieMapper.addMovie(movies);
	}
}
