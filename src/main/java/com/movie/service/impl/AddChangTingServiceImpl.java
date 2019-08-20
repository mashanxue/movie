package com.movie.service.impl;

import com.movie.entity.Changting;
import com.movie.mapper.AddChangTingMapper;
import com.movie.service.AddChangTingService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class AddChangTingServiceImpl implements AddChangTingService {
    @Autowired
    public AddChangTingMapper addChangTingMapper;
    @Override
    public void addChangTing(Changting changting){
        addChangTingMapper.addChangTing(changting);
    }
}
