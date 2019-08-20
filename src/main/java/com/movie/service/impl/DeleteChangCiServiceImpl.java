package com.movie.service.impl;

import com.movie.mapper.DeleteChangCiMapper;
import com.movie.service.DeleteChangCiService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

//删除场次
@Service
public class DeleteChangCiServiceImpl implements DeleteChangCiService {
    @Autowired
    public DeleteChangCiMapper deleteChangCiMapper;
    //删除场次
    public void deleteChangCi(Integer changciId){
        deleteChangCiMapper.deleteChangCi(changciId);
    }
}
