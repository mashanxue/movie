package com.movie.service.impl;

import com.movie.entity.Yingyuan;
import com.movie.mapper.AllYingYuanMapper;
import com.movie.service.AllYingYuanService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

//显示所有影院信息
@Service
public class AllYingYuanServiceImpl implements AllYingYuanService {
    @Autowired
    public AllYingYuanMapper allYingYuanMapper;
    /**显示所有影院信息**/
    @Override
    public List<Yingyuan> allYingYuan(){
        return allYingYuanMapper.allYingYuan() ;
    }
}
