package com.movie.serviceImpl;

import com.movie.entity.Customer;
import com.movie.entity.Movies;
import com.movie.mapper.CustomerMapper;
import com.movie.mapper.YwxMapper;
import com.movie.service.YwxService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class YwxServiceImpl implements YwxService {
    @Autowired
    private CustomerMapper customerMapper;
    @Autowired
    private YwxMapper ywxMapper;


    //电影详情
    public List<Movies> LookAll() {
        return ywxMapper.LookAll();
    }

    //根据Id查电影详情
    public Movies LookOne(int moviesId) {
        return ywxMapper.LookOne(moviesId);
    }

    //注册
    public int zc(Customer customer) {
        return ywxMapper.zc(customer);
    }

    //判断用户是否已经注册
    public int checkingCount(String phone) {
        return ywxMapper.checkingCount(phone);
    }

    //登录
    public Customer login(Customer customer) {
        return ywxMapper.login(customer);
    }


}
