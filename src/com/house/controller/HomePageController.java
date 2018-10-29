package com.house.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.house.entity.House;
import com.house.service.IHouserService;

@Controller
public class HomePageController {
	
	@Autowired
	private IHouserService service;
	
	@RequestMapping("/toIndexPage")
	public String toIndexPage(HttpServletRequest request) {
		List<House> findHomeInfo = service.findHomeInfo();
		request.getSession().setAttribute("House", findHomeInfo);
		return "index.jsp";
	}
	
	@RequestMapping("/findHouseByLike")
	public String findHouseByLike(HttpServletRequest request,String keywords) {
		List<House> findHomeInfo = service.findHouseByLike(keywords);
		request.getSession().removeAttribute("House");
		request.getSession().setAttribute("House", findHomeInfo);
		return "index.jsp";
	}
	
	@RequestMapping("/findHousrOrderByAsc")
	public String findHousrOrderByAsc(HttpServletRequest request) {
		List<House> findHomeInfo = service.findHouseOrderByAsc();
		request.getSession().removeAttribute("House");
		request.getSession().setAttribute("House", findHomeInfo);
		return "index.jsp";
	}
	
	@RequestMapping("/findHousrOrderByDesc")
	public String findHousrOrderByDesc(HttpServletRequest request) {
		List<House> findHomeInfo = service.findHouseOrderByDesc();
		request.getSession().removeAttribute("House");
		request.getSession().setAttribute("House", findHomeInfo);
		return "index.jsp";
	}
}
