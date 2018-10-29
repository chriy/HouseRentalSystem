package com.house.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.house.entity.House;
import com.house.entity.Page;
import com.house.entity.UserHouseData;
import com.house.entity.Users;
import com.house.service.IHouserService;

@Controller
public class HouseController {
	
	@Autowired
	private IHouserService service;
	
	@RequestMapping("/findUserHouse")
	@ResponseBody
	public UserHouseData houseByUser(HttpServletRequest request,int page,int limit) {
		Page p = new Page();
		Users u = (Users) request.getSession().getAttribute("loginUser");
		String publisher = u.getuNickName();
		p.setPublisher(publisher);
		p.setLimit(limit);
		p.setPage((page - 1) * limit);
		List<House> list = service.findHouseByUser(p);
		System.out.println(list);
		UserHouseData data = new UserHouseData(0, "200", list.size(), list);
		return data;
	}
	
	@RequestMapping("/deleteUserHouse")
	@ResponseBody
	public String deleteUserHouse(String hID) {
		int n = service.deleteUserHouse(Integer.parseInt(hID));
		if(n>0) {
			return "OK";
		}
		return "FAIL";
	}
	
	@RequestMapping("/updateHouse")
	@ResponseBody
	public String updateHouse(House house) {
		int n = service.updateHouse(house);
		if(n>0)
			return "OK";
		return "FAIL";
	}
}
