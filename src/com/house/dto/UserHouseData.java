package com.house.dto;

import com.house.entity.House;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.List;

/**
 * 房源数据传输对象
 *
 * @author chriy
 */
@AllArgsConstructor
@NoArgsConstructor
@Data
public class UserHouseData {
    private int code;
    private String msg;
    private int count;
    private List<House> data;
}
