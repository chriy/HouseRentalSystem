package com.house.entity;

import lombok.*;

import java.util.Date;

/**
 * 房屋实体类
 *
 * @author chriy
 */
@Data
@AllArgsConstructor
@NoArgsConstructor
public class House {
    /**
     * 房屋ID
     */
    private int houseId;
    /**
     * 房屋标题描述西信息
     */
    private String houseDesc;
    /**
     * 几室几厅
     */
    private String houseModel;
    /**
     * 面积
     */
    private String houseArea;
    /**
     * 楼层
     */
    private String houseFloor;
    /**
     * 类型
     */
    private String houseType;
    /**
     * 价格
     */
    private int housePrice;
    /**
     * 地址
     */
    private String houseAddress;
    /**
     * 简介图片
     */
    private String houseImage;
    /**
     * 小区名
     */
    private String communityName;
    /**
     * 联系人
     */
    private String houseLinkMan;
    /**
     * 房屋朝向
     */
    private String houseOriented;
    /**
     * 详细图片
     */
    private String houseDetailsImg;
    /**
     * 发布人员
     */
    private String publisher;
    /**
     * 发布时间
     */
    private Date publishTime;
}
