package com.movie.mapper;

import com.movie.entity.Customer;

import java.util.List;

public interface CustomerMapper {
    //查所有
    public List<Customer> findAll();
}
