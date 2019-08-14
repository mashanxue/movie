package com.movie.mapper;

import com.movie.entity.Customer;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import java.util.List;

@Mapper
@Repository
public interface CustomerMapper {
    //查所有
    public List<Customer> findAll();
}
