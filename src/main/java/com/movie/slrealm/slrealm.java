package com.movie.slrealm;

import com.movie.entity.Admin;
import com.movie.service.Adminservice;
import org.apache.catalina.Session;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.*;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.authz.SimpleAuthorizationInfo;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.subject.PrincipalCollection;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;

public class slrealm extends AuthorizingRealm {

    @Autowired
    Adminservice adminservice;
    @Override
    protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection principalCollection) {
        String name= (String) principalCollection.getPrimaryPrincipal();
        System.out.println(name+"AuthorizationInfo");

        SimpleAuthorizationInfo simpleAuthorizationInfo = new SimpleAuthorizationInfo();

        if("李四".equals(name)){
            simpleAuthorizationInfo.addRole("superadmin");
            simpleAuthorizationInfo.addStringPermission("add");
            simpleAuthorizationInfo.addStringPermission("delete");
            simpleAuthorizationInfo.addStringPermission("update");
        }
        if("张三".equals(name)){
            String[] authority=(String[]) SecurityUtils.getSubject().getSession().getAttribute("authority");
                if(authority!=null){
                    for (int i=0;i<authority.length;i++){
                        simpleAuthorizationInfo.addStringPermission(authority[i]);
                        if("delete".equals(authority[i]) || "update".equals(authority[i])){
                            simpleAuthorizationInfo.addRole("superadmin");
                        }
                    }
                }

        }


        return simpleAuthorizationInfo;
    }

    @Override
    protected AuthenticationInfo doGetAuthenticationInfo(AuthenticationToken authenticationToken) throws AuthenticationException {
        UsernamePasswordToken token=(UsernamePasswordToken)authenticationToken;
           Admin admin=new Admin();
           admin.setAdminname(token.getUsername());
          String password= adminservice.adminlogin(admin);

            if(password==null){
                return null;
            }
        return new  SimpleAuthenticationInfo(admin.getAdminname(),password,"");
    }
}
