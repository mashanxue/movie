package com.movie.mapper;

import com.movie.entity.Changting;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;
@Mapper
public interface AllChangTingByIdMapper {
    /**根据影院id显示所有场厅信息**/
    public List<Changting> allChangTing(Integer yingYuanId);
}
