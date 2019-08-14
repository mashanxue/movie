package com.movie.mapper;

import com.movie.entity.Customer;
import com.movie.entity.Movies;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import java.util.List;

@Mapper
@Repository
public interface YwxMapper {
    //电影详情
    public List<Movies> LookAll();
    //根据Id查电影详情
    public Movies LookOne(int moviesId);
    //注册
    public int zc(Customer customer);

}
