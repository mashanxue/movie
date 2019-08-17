package com.movie.entity;

public class Changting {
    private Integer changtingid;

    private String changtingname;

    private Integer changtingdx;

    public Changting(Integer changtingid, String changtingname, Integer changtingdx) {
        this.changtingid = changtingid;
        this.changtingname = changtingname;
        this.changtingdx = changtingdx;
    }

    public Changting() {
        super();
    }

    public Integer getChangtingid() {
        return changtingid;
    }

    public void setChangtingid(Integer changtingid) {
        this.changtingid = changtingid;
    }

    public String getChangtingname() {
        return changtingname;
    }

    public void setChangtingname(String changtingname) {
        this.changtingname = changtingname == null ? null : changtingname.trim();
    }

    public Integer getChangtingdx() {
        return changtingdx;
    }

    public void setChangtingdx(Integer changtingdx) {
        this.changtingdx = changtingdx;
    }
}