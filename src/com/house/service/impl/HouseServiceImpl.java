package com.house.service.impl;

import java.util.List;

import com.house.service.IHouseService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.house.dao.HouseMapper;
import com.house.entity.House;
import com.house.entity.Page;

/**
 * @author chriy
 */
@Service
public class HouseServiceImpl implements IHouseService {

    @Autowired
    private HouseMapper dao;

    @Override
    public List<House> findHomeInfo() {
        return dao.findHomeInfo();
    }

    @Override
    public House findHouseDetailsById(int id) {
        return dao.findHouseDetailsById(id);
    }

    @Override
    public int addNewHouse(House house) {
        return dao.addNewHouse(house);
    }

    @Override
    public List<House> findHouseByUser(Page page) {
        return dao.findHouseByUser(page);
    }

    @Override
    public int deleteUserHouse(int houseId) {
        return dao.deleteUserHouse(houseId);
    }

    @Override
    public int updateHouse(House house) {
        return dao.updateHouse(house);
    }

    @Override
    public List<House> findHouseByLike(String keywords) {
        return dao.findHouseByLike(keywords);
    }

    @Override
    public List<House> findHouseOrderByAsc() {
        return dao.findHouseOrderByAsc();
    }

    @Override
    public List<House> findHouseOrderByDesc() {
        return dao.findHouseOrderByDesc();
    }
}
