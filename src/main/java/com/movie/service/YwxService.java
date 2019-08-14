package com.movie.service;

import com.movie.entity.Customer;
import com.movie.entity.Movies;

import java.util.List;

public interface YwxService {

    //电影详情
    public List<Movies> LookAll();
    //根据Id查电影详情
    public Movies LookOne(int moviesId);
    //注册
    public int zc(Customer customer);
    //查找用户是否已经注册
    public int checkingCount(String phone);
    //登录
    public Customer login(Customer customer);
}
