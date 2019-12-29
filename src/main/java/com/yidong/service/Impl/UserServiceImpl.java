package com.yidong.service.Impl;

import com.yidong.dao.UserRepository;
import com.yidong.entity.User;
import com.yidong.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserServiceImpl implements UserService {

    @Autowired
    private UserRepository userRepository;

    @Override
    public User checkuser(String username, String password) {
        User user = userRepository.findByUsernameAndPassword(username, password);
        return user;
    }

    @Override
    public User findByUsername(String username) {
        return userRepository.findByUsername(username);
    }
}
