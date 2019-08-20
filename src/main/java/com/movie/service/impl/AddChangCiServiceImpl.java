package com.movie.service.impl;

import com.movie.entity.Changci;
import com.movie.mapper.AddChangCiMapper;
import com.movie.service.AddChangCiService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class AddChangCiServiceImpl implements AddChangCiService {
    @Autowired
    public AddChangCiMapper addChangCiMapper;
    //添加场次
    public void addChangCi(Changci changci){
        addChangCiMapper.addChangCi(changci);
    }
}
