package com.movie.service.impl;

import com.movie.mapper.DeleteChangTingMapper;
import com.movie.service.DeleteChangTingService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class DeleteChangTingServiceImpl implements DeleteChangTingService {
    @Autowired
    public DeleteChangTingMapper deleteChangTingMapper;
    //删除场厅
    @Override
    public void deleteChangTing(Integer changTingId){
        deleteChangTingMapper.deleteChangTing(changTingId);
    }
}
