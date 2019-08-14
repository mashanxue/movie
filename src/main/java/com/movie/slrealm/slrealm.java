package com.movie.slrealm;

import com.movie.entity.Admin;
import com.movie.service.Adminservice;
import org.apache.shiro.authc.*;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.subject.PrincipalCollection;
import org.springframework.beans.factory.annotation.Autowired;

public class slrealm extends AuthorizingRealm {

    @Autowired
    Adminservice adminservice;
    @Override
    protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection principalCollection) {

        return null;
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
        return new  SimpleAuthenticationInfo("",password,"");
    }
}
