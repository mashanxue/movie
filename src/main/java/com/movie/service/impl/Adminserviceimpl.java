package com.movie.service.impl;

import com.movie.entity.Admin;
import com.movie.entity.Movies;
import com.movie.entity.Yingyuan;
import com.movie.mapper.AdminMapper;
import com.movie.service.Adminservice;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class Adminserviceimpl implements Adminservice {
    @Autowired
    AdminMapper adminMapper;

    @Override
    public Admin adminlogin(Admin admin) {
        return adminMapper.adminlogin(admin);

    }
    public List<Movies> selectallmovie(){
        return adminMapper.selectallmovie();
    }

    public List<Yingyuan> findallyingyuan(){
        return adminMapper.findallyingyuan();
    }

    public List<Yingyuan> findspecialyingyuan(Yingyuan yingyuan){
        return adminMapper.findspecialyingyuan(yingyuan);
    }

    public Integer updateyingyuan(Yingyuan yingyuan){
        return adminMapper.updateyingyuan(yingyuan);
    }

    public Integer insertyingyuan(Yingyuan yingyuan){
        return adminMapper.insertyingyuan(yingyuan);
    }

    public Integer deleteyingyuan(Integer id){
        return adminMapper.deleteyingyuan(id);
    }
    public List<Admin> selectadmin(Integer id){
        return adminMapper.selectadmin(id);
    }

    public Integer addadmin(Admin admin){
        return adminMapper.addadmin(admin);
    }
}
