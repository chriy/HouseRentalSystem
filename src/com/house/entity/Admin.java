package com.house.entity;
/**
 * 
 * @Description 管理员账号
 */
public class Admin {
	private int id;
	private String username;
	private String userpwd;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getUserpwd() {
		return userpwd;
	}

	public void setUserpwd(String userpwd) {
		this.userpwd = userpwd;
	}

	public Admin(int id, String username, String userpwd) {
		super();
		this.id = id;
		this.username = username;
		this.userpwd = userpwd;
	}

	public Admin(String username, String userpwd) {
		super();
		this.username = username;
		this.userpwd = userpwd;
	}

	public Admin() {
		super();
	}

}
