package com.studyssm.service.impl;

import com.studyssm.mapper.UserMapper;
import com.studyssm.entity.User;
import com.studyssm.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;
import java.util.Set;

/**
 * Describe:
 *
 * @author cwqsolo
 * @date 2019/07/22
 */
@Service("userService")
public class UserServiceImpl implements UserService{
    @Autowired
    @SuppressWarnings("SpringJavaAutowiringInspection")
    private UserMapper userMapper;

    @Override
    public User findUserByUsername(String username) {
        User t_user = userMapper.findUserByUsername(username);
        return t_user;
    }

    @Override
    public Set<String> findRoles(String username) {
        return userMapper.findRoles(username);
    }

    @Override
    public Set<String> findPermissions(String username) {
        return userMapper.findPermissions(username);
    }



    public List<User> list(){
        return userMapper.list();
    }
}
