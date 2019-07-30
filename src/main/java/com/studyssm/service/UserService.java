package com.studyssm.service;

import com.studyssm.entity.User;

import java.util.List;
import java.util.Set;

public interface UserService {
    /**
     * Shiro的登录验证，通过用户名查询用户信息
     *
     * @param username
     * @return
     */
    User findUserByUsername(String username);

    /**
     * 根据账号查找角色名称
     *
     * @param username
     * @return
     */
    Set<String> findRoles(String username);

    /**
     * 根据账号查找权限
     *
     * @param username
     * @return
     */
    Set<String> findPermissions(String username);



    List<User> list();

}
