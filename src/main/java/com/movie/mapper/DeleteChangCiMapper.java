package com.movie.mapper;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface DeleteChangCiMapper {
    public void deleteChangCi(Integer changciId);
}
