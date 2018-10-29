package com.house.entity;

public class Page {

	private int page;

	private int limit;

	private int uID;

	private String publisher;

	public int getPage() {
		return page;
	}

	public void setPage(int page) {
		this.page = page;
	}

	public int getLimit() {
		return limit;
	}

	public void setLimit(int limit) {
		this.limit = limit;
	}

	public int getuID() {
		return uID;
	}

	public void setuID(int uID) {
		this.uID = uID;
	}

	public String getPublisher() {
		return publisher;
	}

	public void setPublisher(String publisher) {
		this.publisher = publisher;
	}

	public Page(int page, int limit, int uID, String publisher) {
		super();
		this.page = page;
		this.limit = limit;
		this.uID = uID;
		this.publisher = publisher;
	}

	public Page(int limit, int uID, String publisher) {
		super();
		this.limit = limit;
		this.uID = uID;
		this.publisher = publisher;
	}

	public Page() {
		super();
	}

}
