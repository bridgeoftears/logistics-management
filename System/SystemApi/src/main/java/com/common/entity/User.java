package com.common.entity;

import com.common.BasePojo;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

//用户
@Data
@AllArgsConstructor
@NoArgsConstructor

public class User extends BasePojo {
    //系统id
    private String id;
    //用户id
    private String userId;
    //用户名称
    private String userName;
    //用户密码
    private String userPw;
    //用户级别(0:普通用户,9:管理员)
    private String userLevel;

    private int userBalance;
    private String userDormitory;

    private String mysqlTableName = "user";
    private String serviceModular = "system-provider-user";
    private String modular = "User";
    private String PAYMENT_URL = "/"+ serviceModular + "/" + modular;


}
