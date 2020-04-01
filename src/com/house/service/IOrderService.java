package com.house.service;

import java.util.List;

import com.house.entity.Order;
import com.house.entity.Page;
import com.house.entity.UserOrder;

/**
 * @author chriy
 */
public interface IOrderService {
    /**
     * 添加订单信息
     *
     * @param order 房源收藏对象
     * @return int
     */
    int addOrder(Order order);

    /**
     * 查询所有订单信息
     *
     * @param page 分页
     * @return userOrder list
     */
    List<UserOrder> findAllOrder(Page page);

    /**
     * 查询单个用户所有订单
     *
     * @param userId userId
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
