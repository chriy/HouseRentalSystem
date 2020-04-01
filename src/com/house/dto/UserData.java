package com.house.dto;

import com.house.entity.User;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.List;

/**
 * 用户数据传输对象
 * @author chriy
 */
@NoArgsConstructor
@AllArgsConstructor
@Data
public class UserData {
	private int code;

	private String msg;

	private int count;

	private List<User> data;

}
