package com.movie.service.impl;

import com.movie.entity.Changting;
import com.movie.mapper.AllChangTingByIdMapper;
import com.movie.service.AllChangTingByIdService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

//根据影院id显示所有场厅信息
@Service
public class AllChangTingByIdServiceImpl implements AllChangTingByIdService {
    @Autowired
    public AllChangTingByIdMapper allChangTingByIdMapper;
    /**根据影院id显示所有场厅信息**/
    @Override
    public List<Changting> allChangTing(Integer yingYuanId){
        return allChangTingByIdMapper.allChangTing(yingYuanId);
    }
}
