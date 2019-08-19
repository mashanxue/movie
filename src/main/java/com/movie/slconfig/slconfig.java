package com.movie.slconfig;

import com.movie.slrealm.slrealm;
import org.apache.shiro.spring.web.ShiroFilterFactoryBean;
import org.apache.shiro.web.mgt.DefaultWebSecurityManager;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import java.util.LinkedHashMap;
import java.util.Map;
@Configuration
public class slconfig {


        @Bean
        public ShiroFilterFactoryBean getShiroFilterFactoryBean(@Qualifier("securitymanager")DefaultWebSecurityManager securitymanager ){
            ShiroFilterFactoryBean  factoryBean=new ShiroFilterFactoryBean();
            factoryBean.setSecurityManager(securitymanager);
            Map<String,String> filtermap=new LinkedHashMap<>();
              filtermap.put("/managerlogin","anon");
            /*  filtermap.put("index","perms[user:add]");*/
            factoryBean.setFilterChainDefinitionMap(filtermap);
            factoryBean.setLoginUrl("managerlogin.jsp");
            factoryBean.setUnauthorizedUrl("managerlogin.jsp");
            return factoryBean;
        }



        @Bean(name = "securitymanager")
        public DefaultWebSecurityManager getDefaultWebSecurityManager(@Qualifier("slrealm") slrealm slrealm){
            DefaultWebSecurityManager securitymanager=new DefaultWebSecurityManager();
            securitymanager.setRealm(slrealm);
            return securitymanager;
        }

        @Bean(name = "slrealm")
        public slrealm getuserrealm(){
            return new slrealm();
        }


}
