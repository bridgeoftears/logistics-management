package com.common.entity;

import com.common.BasePojo;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

//保修信息
@Data
@AllArgsConstructor
@NoArgsConstructor
public class Report  extends BasePojo {
    //报备ID
    private String reportId;
    //报备标题
    private String reportTitle;
    //报备内容
    private String reportContent;
    //报备用户
    private String reportUser;
    //报备时间
    private String reportTime;
    //报备状态
    private String reportState;

    private String mysqlTableName = "report";
    private String serviceModular = "system-provider-other";
    private String modular = "Report";
    private String PAYMENT_URL = "/"+ serviceModular + "/" + modular;


}
