package com.yidong.dao;

import com.yidong.entity.User;
import org.springframework.data.jpa.repository.JpaRepository;

public interface UserRepository extends JpaRepository<User,Long> {

    //通过名称和密码查询用户
    User findByUsernameAndPassword(String username,String password);

    User findByUsername(String username);
}
