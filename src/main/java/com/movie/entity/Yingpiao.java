package com.movie.entity;

import java.util.Date;

public class Yingpiao {
    private Integer yingpiaoid;

    private Integer customerid;

    private Integer cinemaid;

    private String changtingname;

    private Integer movieid;

    private Date starttime;

    private Long movieprice;

    private Integer seat;

    public Yingpiao(Integer yingpiaoid, Integer customerid, Integer cinemaid, String changtingname, Integer movieid, Date starttime, Long movieprice, Integer seat) {
        this.yingpiaoid = yingpiaoid;
        this.customerid = customerid;
        this.cinemaid = cinemaid;
        this.changtingname = changtingname;
        this.movieid = movieid;
        this.starttime = starttime;
        this.movieprice = movieprice;
        this.seat = seat;
    }

    public Yingpiao() {
        super();
    }

    public Integer getYingpiaoid() {
        return yingpiaoid;
    }

    public void setYingpiaoid(Integer yingpiaoid) {
        this.yingpiaoid = yingpiaoid;
    }

    public Integer getCustomerid() {
        return customerid;
    }

    public void setCustomerid(Integer customerid) {
        this.customerid = customerid;
    }

    public Integer getCinemaid() {
        return cinemaid;
    }

    public void setCinemaid(Integer cinemaid) {
        this.cinemaid = cinemaid;
    }

    public String getChangtingname() {
        return changtingname;
    }

    public void setChangtingname(String changtingname) {
        this.changtingname = changtingname == null ? null : changtingname.trim();
    }

    public Integer getMovieid() {
        return movieid;
    }

    public void setMovieid(Integer movieid) {
        this.movieid = movieid;
    }

    public Date getStarttime() {
        return starttime;
    }

    public void setStarttime(Date starttime) {
        this.starttime = starttime;
    }

    public Long getMovieprice() {
        return movieprice;
    }

    public void setMovieprice(Long movieprice) {
        this.movieprice = movieprice;
    }

    public Integer getSeat() {
        return seat;
    }

    public void setSeat(Integer seat) {
        this.seat = seat;
    }
}