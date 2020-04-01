package com.house.dao;

import com.house.entity.User;

/**
 * @author chriy
 */
public interface UserMapper {
    /**
     * 用户登录
     *
     * @param user user
     * @return user
     */
    User login(User user);

    /**
     * 用户注册
     *
     * @param user user
     * @return int
     */
    int register(User user);

    /**
     * 修改密码
     *
     * @param user user
     * @return int
     */
    int updateUserPwd(User user);

    /**
     * 检查旧密码
     *
     * @param user user
     * @return user
     */
    User checkOldPwd(User user);
}
