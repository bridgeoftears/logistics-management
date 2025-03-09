package com.common;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.io.Serializable;

//公共父类
@Data
@AllArgsConstructor
@NoArgsConstructor
public class BasePojo implements Serializable {

    private String id;
    //页数
    private Integer page = 1;
    //条数
    private Integer rows = 2;

    private String isDel;
    private String time;

}
