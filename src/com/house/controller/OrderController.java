package com.house.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.house.entity.Order;
import com.house.entity.Page;
import com.house.entity.UserOrder;
import com.house.entity.UserOrderData;
import com.house.entity.Users;
import com.house.service.IOrderService;


@Controller
public class OrderController {

	@Autowired
	private IOrderService sevice;
	
	@RequestMapping("/myorder")
	public String toOrderPage() {
		return "myorder.jsp";
	}
	
	@RequestMapping("/updatepwd")
	public String toUpdatepwdPage() {
		return "updatepwd.jsp";
	}
	
	@RequestMapping("/addOrder")
	@ResponseBody
	public String addOrder(String id,HttpServletRequest request) {
		Users u = (Users) request.getSession().getAttribute("loginUser");
		try {
			Order order = new Order();
			order.sethID(Integer.parseInt(id));
			order.setOrderUser(u.getuNickName());
			order.setuID(u.getuID());
			int n = sevice.addOrder(order);
			if(n>0) {
				return "OK";
			}
		} catch (NumberFormatException e) {
			e.printStackTrace();
		}
		return "FAIL";
	}
	
	@RequestMapping("/myOrderInfo")
	@ResponseBody
	public UserOrderData findAllOrder(int page,int limit,HttpServletRequest request){
		Page p = new Page();
		p.setPage((page - 1) * limit);
		p.setLimit(limit);
		Users u = (Users) request.getSession().getAttribute("loginUser");
		p.setuID(u.getuID());
		UserOrderData uod = new UserOrderData();
		List<UserOrder> order = sevice.findAllOrder(p);
		uod.setCode(0);
		uod.setCount(sevice.getOrderCount(u.getuID()));
		uod.setData(order);
		uod.setMsg("200");
		return  uod;
	}
	
	@RequestMapping("/deleteOrder")
	@ResponseBody
	public String deleteOrder(int oID) {
		int n = sevice.deleteOrder(oID);
		if(n>0)
			return "OK";
		return "FAIL";
	}
}
