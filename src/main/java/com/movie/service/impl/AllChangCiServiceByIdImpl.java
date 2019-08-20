package com.movie.service.impl;

import com.movie.entity.Changci;
import com.movie.mapper.AllChangCiByIdMapper;
import com.movie.service.AllChangCiServiceById;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

//根据场厅id查所有场次
@Service
public class AllChangCiServiceByIdImpl implements AllChangCiServiceById {
    //根据场厅id查所有场次
    @Autowired
    public AllChangCiByIdMapper allChangCiByIdMapper;
    public List<Changci> allChangci(Integer changtingId){
        return allChangCiByIdMapper.allChangci(changtingId);
    }

}
