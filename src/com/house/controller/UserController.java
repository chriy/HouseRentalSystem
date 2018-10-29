package com.house.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.house.entity.House;
import com.house.entity.Users;
import com.house.service.IHouserService;
import com.house.service.IUserService;

@Controller
public class UserController {
	
	@Autowired
	private IUserService service;
	@Autowired
	private IHouserService dao;
	
	@RequestMapping("/toUserSystem")
	public String toUserSystemPage() {
		return "customer.jsp";
	}
	
	@RequestMapping("/toUserRentalPage")
	public String toUserRentalPage() {
		return "myrental.jsp";
	}
	
	@RequestMapping("/welcome")
	public String toWelcomePage() {
		return "welcome.jsp";
	}
	
	@RequestMapping("/toUpdateHousePage")
	public String toUpdatePage(int hID,HttpServletRequest request) {
		House house = dao.findHouseDetailsById(hID);
		request.getSession().setAttribute("House", house);
		return "updatehouse.jsp";
	}
	
	@RequestMapping("/updateUserPwd")
	@ResponseBody
	public String updateUserPwd(String id,String newPwd,String oldPwd) {
		Users oldUser = new Users();
		oldUser.setuID(Integer.parseInt(id));
		oldUser.setuPassword(oldPwd);
		Users checkUser = service.checkOldPwd(oldUser);
		if(checkUser!=null) {
			Users newUser = new Users();
			newUser.setuID(Integer.parseInt(id));
			newUser.setuPassword(newPwd);
			int n = service.updateUserPwd(newUser);
			if(n>0) {
				return "OK";
			}
		}
		return "FAIL";
	}
}
