package com.movie.mapper;

import com.movie.entity.Changci;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface AllChangCiByIdMapper {
    public List<Changci> allChangci(Integer changtingId);
}
