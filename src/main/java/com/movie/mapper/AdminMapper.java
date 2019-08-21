package com.movie.mapper;

import com.movie.entity.Admin;
import com.movie.entity.Movies;
import com.movie.entity.Yingyuan;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import java.util.List;

@Mapper
@Repository
public interface AdminMapper {

    public String adminlogin (Admin admin);

    public List<Movies>  selectallmovie();

    public List<Yingyuan> findallyingyuan();

    public List<Yingyuan> findspecialyingyuan(Yingyuan yingyuan);

    public Integer updateyingyuan(Yingyuan yingyuan);

    public Integer insertyingyuan(Yingyuan yingyuan);

    public Integer deleteyingyuan(int id);
}
