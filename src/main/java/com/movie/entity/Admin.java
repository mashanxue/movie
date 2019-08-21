package com.movie.entity;

import java.io.Serializable;

public class Admin implements Serializable{
    private Integer adminid;

    private String adminname;

    private String adminpassword;

    private Integer yingyuan;

    public Admin(Integer adminid, String adminname, String adminpassword) {
        this.adminid = adminid;
        this.adminname = adminname;
        this.adminpassword = adminpassword;
    }


    public Admin() {
        super();
    }

    public Integer getYingyuan() {
        return yingyuan;
    }

    public void setYingyuan(Integer yingyuan) {
        this.yingyuan = yingyuan;
    }


    public Integer getAdminid() {
        return adminid;
    }

    public void setAdminid(Integer adminid) {
        this.adminid = adminid;
    }

    public String getAdminname() {
        return adminname;
    }

    public void setAdminname(String adminname) {
        this.adminname = adminname == null ? null : adminname.trim();
    }

    public String getAdminpassword() {
        return adminpassword;
    }

    public void setAdminpassword(String adminpassword) {
        this.adminpassword = adminpassword == null ? null : adminpassword.trim();
    }
}