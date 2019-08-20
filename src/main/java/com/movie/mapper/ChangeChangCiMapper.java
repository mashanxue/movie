package com.movie.mapper;

import com.movie.entity.Changci;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface ChangeChangCiMapper {
    //修改场次
    public void changeChangCi(Changci changci);
}
