package com.house.dao;

import com.house.entity.Order;
import com.house.entity.Page;
import com.house.entity.UserOrder;

import java.util.List;

/**
 * @author chriy
 */
public interface OrderMapper {
    /**
     * 添加房屋收藏订单
     *
     * @param order order
     * @return int
     */
    int addOrder(Order order);

    /**
     * 查询所有收藏信息
     *
     * @param page 分页
     * @return List
     */
    List<UserOrder> findAllOrder(Page page);

    /**
     * 查询所有订单数
     *
     * @param userId id
     * @return int
     */
    int getOrderCount(int userId);

    /**
     * 删除用户订单
     *
     * @param orderId orderId
     * @return int
     */
    int deleteOrder(int orderId);

}
