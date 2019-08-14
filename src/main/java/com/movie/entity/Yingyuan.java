package com.movie.entity;

public class Yingyuan {
    private Integer yingyuanid;

    private String yingyuanname;

    private String yingyuanaddress;

    public Yingyuan(Integer yingyuanid, String yingyuanname, String yingyuanaddress) {
        this.yingyuanid = yingyuanid;
        this.yingyuanname = yingyuanname;
        this.yingyuanaddress = yingyuanaddress;
    }

    public Yingyuan() {
        super();
    }

    public Integer getYingyuanid() {
        return yingyuanid;
    }

    public void setYingyuanid(Integer yingyuanid) {
        this.yingyuanid = yingyuanid;
    }

    public String getYingyuanname() {
        return yingyuanname;
    }

    public void setYingyuanname(String yingyuanname) {
        this.yingyuanname = yingyuanname == null ? null : yingyuanname.trim();
    }

    public String getYingyuanaddress() {
        return yingyuanaddress;
    }

    public void setYingyuanaddress(String yingyuanaddress) {
        this.yingyuanaddress = yingyuanaddress == null ? null : yingyuanaddress.trim();
    }
}