package com.house.controller.house;

import com.house.dto.UserOrderData;
import com.house.entity.Order;
import com.house.entity.Page;
import com.house.entity.User;
import com.house.entity.UserOrder;
import com.house.service.IOrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

/**
 * 收藏控制类
 *
 * @author chriy
 */
@Controller
@RequestMapping("/order")
public class OrderController {

    @Autowired
    private IOrderService service;

    /**
     * 用户的收藏房源界面
     *
     * @return view
     */
    @GetMapping("/myOrder.html")
    public String toOrderPage() {
        return "/user/myOrder.jsp";
    }

    /**
     * 添加订单
     *
     * @param id      房源id
     * @param request req
     * @return res
     */
    @PostMapping("/addOrder")
    @ResponseBody
    public String addOrder(String id, HttpServletRequest request) {
        User user = (User) request.getSession().getAttribute("loginUser");
        try {
            Order order = new Order();
            order.setHouseId(Integer.parseInt(id));
            order.setOrderUser(user.getUserNickName());
            order.setUserId(user.getUserId());
            int n = service.addOrder(order);
            if (n > 0) {
                return "OK";
            }
        } catch (NumberFormatException e) {
            e.printStackTrace();
        }
        return "FAIL";
    }

    /**
     * 查询我的所有收藏房源信息
     *
     * @param page    page
     * @param limit   limit
     * @param request req
     * @return res
     */
    @PostMapping("/myOrderInfo")
    @ResponseBody
    public UserOrderData findAllOrder(int page, int limit, HttpServletRequest request) {
        Page pageObj = new Page();
        pageObj.setPage((page - 1) * limit);
        pageObj.setLimit(limit);
        User user = (User) request.getSession().getAttribute("loginUser");
        pageObj.setUserId(user.getUserId());
        UserOrderData uod = new UserOrderData();
        List<UserOrder> order = service.findAllOrder(pageObj);
        uod.setCode(0);
        uod.setCount(service.getOrderCount(user.getUserId()));
        uod.setData(order);
        uod.setMsg("200");
        return uod;
    }

    /**
     * 删除收藏的房源信息
     *
     * @param orderId 单号
     * @return res
     */
    @PostMapping("/deleteOrder")
    @ResponseBody
    public String deleteOrder(int orderId) {
        int n = service.deleteOrder(orderId);
        if (n > 0) {
            return "OK";
        }
        return "FAIL";
    }
}
