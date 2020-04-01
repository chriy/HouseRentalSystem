package com.house.controller.house;

import com.house.dto.UserHouseData;
import com.house.entity.House;
import com.house.entity.Page;
import com.house.entity.User;
import com.house.service.IHouseService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

/**
 * @author chriy
 */
@Controller
@RequestMapping("/house")
public class HouseController {

    @Autowired
    private IHouseService service;

    @RequestMapping("/findUserHouse")
    @ResponseBody
    public UserHouseData houseByUser(HttpServletRequest request, int page, int limit) {
        Page p = new Page();
        User u = (User) request.getSession().getAttribute("loginUser");
        String publisher = u.getUserNickName();
        p.setPublisher(publisher);
        p.setLimit(limit);
        p.setPage((page - 1) * limit);
        List<House> list = service.findHouseByUser(p);
        System.out.println(list);
        return new UserHouseData(0, "200", list.size(), list);
    }

    /**
     * 删除用户发布的房源信息
     *
     * @param houseId 房源 ID
     * @return res
     */
    @PostMapping("/deleteUserHouse")
    @ResponseBody
    public String deleteUserHouse(String houseId) {
        int n = service.deleteUserHouse(Integer.parseInt(houseId));
        if (n > 0) {
            return "OK";
        }
        return "FAIL";
    }

    /**
     * 更新房源信息
     *
     * @param house 房源数据
     * @return res
     */
    @PostMapping("/updateHouse")
    @ResponseBody
    public String updateHouse(House house) {
        int n = service.updateHouse(house);
        if (n > 0) {
            return "OK";
        }
        return "FAIL";
    }
}
