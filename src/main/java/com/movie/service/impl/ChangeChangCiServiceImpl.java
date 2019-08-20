package com.movie.service.impl;

import com.movie.entity.Changci;
import com.movie.mapper.ChangeChangCiMapper;
import com.movie.service.ChangeChangCiService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ChangeChangCiServiceImpl implements ChangeChangCiService {
    @Autowired
    public ChangeChangCiMapper changeChangCiMapper;
    //修改场次
    @Override
    public void changeChangCi(Changci changci){
        changeChangCiMapper.changeChangCi(changci);
    }
}
