package com.movie.mapper;

import com.movie.entity.Changting;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface AddChangTingMapper {
    //添加场厅
    public void addChangTing(Changting changting);
}
