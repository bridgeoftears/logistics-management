package com.common.entity;


import com.common.BasePojo;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

//宿舍
@Data
@AllArgsConstructor
@NoArgsConstructor
public class Dormitory  extends BasePojo {
    //宿舍ID
    private String dormitoryId;
    //宿舍备注
    private String dormitoryRemarks;

    private String mysqlTableName = "dormitory";
    private String serviceModular = "system-provider-other";
    private String modular = "Dormitory";
    private String PAYMENT_URL = "/"+ serviceModular + "/" + modular;
}
