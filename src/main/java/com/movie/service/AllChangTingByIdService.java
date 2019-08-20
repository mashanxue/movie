package com.movie.service;

import com.movie.entity.Changting;

import java.util.List;
//根据影院id显示所有场厅信息
public interface AllChangTingByIdService {
    /**根据影院id显示所有场厅信息**/
    public List<Changting> allChangTing(Integer yingYuanId);
}
