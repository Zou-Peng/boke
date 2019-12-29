package com.yidong.service;

import com.yidong.entity.User;

public interface UserService {

    //根据用户名/密码查询用户
    User checkuser(String username,String password);

    User findByUsername(String username);
}
