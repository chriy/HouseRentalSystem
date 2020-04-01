package com.house.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.Date;

/**
 * @author chriy
 */
@AllArgsConstructor
@NoArgsConstructor
@Data
public class UserOrder {
    private int orderId;
    private int houseId;
    private Date orderTime;
    private String orderUser;
    private String houseDesc;
    private String houseModel;
    private String houseArea;
    private String houseFloor;
    private String houseType;
    private int housePrice;
    private String houseAddress;
    private String houseImage;
    private String communityName;
    private String houseLinkMan;
    private String houseOriented;
}
