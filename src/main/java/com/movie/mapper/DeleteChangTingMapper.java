package com.movie.mapper;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface DeleteChangTingMapper {
    //删除场厅
    public void deleteChangTing(Integer changTingId);
}
