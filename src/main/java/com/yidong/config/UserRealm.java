package com.yidong.config;

import com.yidong.entity.User;
import com.yidong.service.UserService;
import org.apache.shiro.authc.*;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.subject.PrincipalCollection;
import org.springframework.beans.factory.annotation.Autowired;

//自定义的UserRealm
public class UserRealm extends AuthorizingRealm{

    @Autowired
    private UserService userService;

    //授权
    @Override
    protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection principalCollection) {
        return null;
    }

    //认证
    @Override
    protected AuthenticationInfo doGetAuthenticationInfo(AuthenticationToken token) throws AuthenticationException {

        UsernamePasswordToken userToken = (UsernamePasswordToken)token;
        //连接数据库
        User user = userService.findByUsername(userToken.getUsername());

        if (user == null){
            return null;
        }

//        System.out.println(user.getPassword());
//        String pwd = new Md5Hash(userToken.getPassword()).toString();
//        System.out.println(userToken.getPassword());
//        System.out.println(pwd);
        return new SimpleAuthenticationInfo(user,user.getPassword(),"");
    }
}
