package com.house.dao;

import com.house.entity.Admin;
import com.house.entity.House;
import com.house.entity.Page;
import com.house.entity.User;

import java.util.List;

/**
 * @author chriy
 */
public interface AdminMapper {
    /**
     * 管理员登录
     *
     * @param admin 管理员对象
     * @return admin
     */
    Admin adminAccess(Admin admin);

    /**
     * 查询所有用户
     *
     * @return user list
     */
    List<User> findAllUser();

    /**
     * 查询所有房源信息
     *
     * @param page 分页
     * @return List
     */
    List<House> findAllHouse(Page page);

    /**
     * 管理员删除房源信息
     *
     * @param houseId id
     * @return int
     */
    int deleteHouse(int houseId);

    /**
     * 通过id查询用户
     *
     * @param userId id
     * @return user
     */
    User findUserById(int userId);

    /**
     * 管理员更新普通用户信息
     *
     * @param user user
     * @return int
     */
    int updateUser(User user);

    /**
     * 管理员删除用户
     *
     * @param userId id
     * @return int
     */
    int deleteUser(int userId);

    /**
     * 检查修改密码原密码
     *
     * @param admin admin
     * @return admin
     */
    Admin checkAdminPwd(Admin admin);

    /**
     * 修改管理员密码
     *
     * @param admin admin
     * @return int
     */
    int updateAdminPwd(Admin admin);
}
