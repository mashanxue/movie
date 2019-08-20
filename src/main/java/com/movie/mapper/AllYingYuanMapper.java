package com.movie.mapper;

import com.movie.entity.Yingyuan;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface AllYingYuanMapper {
    /**显示所有场厅信息**/
    public List<Yingyuan> allYingYuan();
}
