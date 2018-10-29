package com.house.entity;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

public class Order {
	private int oID;
	private int hID;
	private int uID;
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date orderTime;
	private String orderUser;

	public int getuID() {
		return uID;
	}

	public void setuID(int uID) {
		this.uID = uID;
	}

	public int getoID() {
		return oID;
	}

	public void setoID(int oID) {
		this.oID = oID;
	}

	public int gethID() {
		return hID;
	}

	public void sethID(int hID) {
		this.hID = hID;
	}

	public Date getOrderTime() {
		return orderTime;
	}

	public void setOrderTime(Date orderTime) {
		this.orderTime = orderTime;
	}

	public String getOrderUser() {
		return orderUser;
	}

	public void setOrderUser(String orderUser) {
		this.orderUser = orderUser;
	}

	public Order(int hID, int uID, Date orderTime, String orderUser) {
		super();
		this.hID = hID;
		this.uID = uID;
		this.orderTime = orderTime;
		this.orderUser = orderUser;
	}

	public Order(int oID, int hID, int uID, Date orderTime, String orderUser) {
		super();
		this.oID = oID;
		this.hID = hID;
		this.uID = uID;
		this.orderTime = orderTime;
		this.orderUser = orderUser;
	}

	public Order() {
		super();
	}
}
