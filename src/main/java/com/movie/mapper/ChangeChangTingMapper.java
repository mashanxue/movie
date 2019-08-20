package com.movie.mapper;

import com.movie.entity.Changting;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface ChangeChangTingMapper {
    /**修改场厅信息**/
    public void changeChangTing(Changting changting);
}
