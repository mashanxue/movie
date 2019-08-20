package com.movie.mapper;

import com.movie.entity.Changci;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface AddChangCiMapper {
    //添加场次
    public void addChangCi(Changci changci);
}
