package com.house.service;

import java.util.List;

import com.house.entity.House;
import com.house.entity.Page;

/**
 * @author chriy
 */
public interface IHouseService {
    /**
     * 首页信息展示
     *
     * @return house list
     */
    List<House> findHomeInfo();

    /**
     * 通过id查询房屋详情
     *
     * @param houseId houseId
     * @return house
     */
    House findHouseDetailsById(int houseId);

    /**
     * 添加房源信息
     *
     * @param house house
     * @return int
     */
    int addNewHouse(House house);

    /**
     * 查询用户发布的房源信息
     *
     * @param page 分页
     * @return house list
     */
    List<House> findHouseByUser(Page page);

    /**
     * 删除用户发布的房源信息
     *
     * @param houseId houseId
     * @return ibt
     */
    int deleteUserHouse(int houseId);

    /**
     * 修改用户发布的房源信息
     *
     * @param house house
     * @return int
     */
    int updateHouse(House house);

    /**
     * 条件查询
     *
     * @param keywords 关键字
     * @return house list
     */
    List<House> findHouseByLike(String keywords);

    /**
     * 降序查询
     *
     * @return house list
     */
    List<House> findHouseOrderByDesc();

    /**
     * 升序序查询
     *
     * @return house list
     */
    List<House> findHouseOrderByAsc();
}
