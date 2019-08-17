package com.movie.service;

import com.movie.entity.Admin;
import com.movie.entity.Movies;
import com.movie.entity.Yingyuan;

import java.util.List;

public interface Adminservice {


    public String adminlogin (Admin admin);
    public List<Movies> selectallmovie();

    public List<Yingyuan> findallyingyuan();

    public List<Yingyuan> findspecialyingyuan(Yingyuan yingyuan);
}
