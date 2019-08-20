package com.movie.service.impl;

import com.movie.entity.Changting;
import com.movie.mapper.ChangeChangTingMapper;
import com.movie.service.ChangeChangTingService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

//修改场厅
@Service
public class ChangeChangTingServiceImpl implements ChangeChangTingService {
    @Autowired
    public ChangeChangTingMapper changeChangTingMapper;
    /**修改场厅信息**/
    @Override
    public void changeChangTing(Changting changting){
       changeChangTingMapper.changeChangTing(changting);
    }
}
