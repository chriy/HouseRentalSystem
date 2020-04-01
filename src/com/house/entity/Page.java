package com.house.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * @author chriy
 */
@AllArgsConstructor
@NoArgsConstructor
@Data
public class Page {

    private int page;

    private int limit;

    private int userId;

    private String publisher;
}
