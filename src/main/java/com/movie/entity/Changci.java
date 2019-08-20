package com.movie.entity;

import com.fasterxml.jackson.annotation.JsonFormat;
import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;

public class Changci {
    private Integer changciId;
    private String changciName;
    private Integer changtingId;
    private Integer moviesId;


    @DateTimeFormat(pattern="yyyy-MM-dd HH:mm:ss")
    @JsonFormat(pattern="yyyy-MM-dd HH:mm:ss", timezone="GMT+8")
    private Date time;

    private Integer sypShu;
    private Integer zwId;

    public Integer getZwId() {
        return zwId;
    }

    public void setZwId(Integer zwId) {
        this.zwId = zwId;
    }

    public Integer getChangciId() {
        return changciId;
    }

    public void setChangciId(Integer changciId) {
        this.changciId = changciId;
    }

    public String getChangciName() {
        return changciName;
    }

    public void setChangciName(String changciName) {
        this.changciName = changciName;
    }

    public Integer getChangtingId() {
        return changtingId;
    }

    public void setChangtingId(Integer changtingId) {
        this.changtingId = changtingId;
    }

    public Integer getMoviesId() {
        return moviesId;
    }

    public void setMoviesId(Integer moviesId) {
        this.moviesId = moviesId;
    }

    public Date getTime() {
        return time;
    }

    public void setTime(Date time) {
        this.time = time;
    }

    public Integer getSypShu() {
        return sypShu;
    }

    public void setSypShu(Integer sypShu) {
        this.sypShu = sypShu;
    }
}
