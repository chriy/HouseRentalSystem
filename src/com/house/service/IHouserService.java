package com.house.service;

import java.util.List;

import com.house.entity.House;
import com.house.entity.Page;

public interface IHouserService {
	/**
	 * 首页信息展示
	 * @return
	 */
	public List<House> findHomeInfo();
	/**
	 * 通过id查询房屋详情
	 * @param id
	 * @return
	 */
	public House findHouseDetailsById(int id);
	/**
	 * 添加房源信息
	 * @param house
	 * @return
	 */
	public int addNewHouse(House house);
	/**
	 * 查询用户发布的房源信息
	 * @param users
	 * @return
	 */
	public List<House> findHouseByUser(Page page);
	/**
	 *  删除用户发布的房源信息
	 * @param hID
	 * @return
	 */
	public int deleteUserHouse(int hID);
	/**
	 * 修改用户发布的房源信息
	 * @param hID
	 * @return
	 */
	public int updateHouse(House house);
	/**
	 * 条件查询
	 * @param keywords
	 * @return
	 */
	public List<House> findHouseByLike(String keywords);
	/**
	 * 降序查询
	 * @return
	 */
	public List<House> findHouseOrderByDesc();
	/**
	 * 升序序查询
	 * @return
	 */
	public List<House> findHouseOrderByAsc();
}
