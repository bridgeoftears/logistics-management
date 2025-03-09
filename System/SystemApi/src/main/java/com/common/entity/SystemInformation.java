package com.common.entity;

import com.common.BasePojo;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class SystemInformation  extends BasePojo {
    //系统信息ID
    private String informationId;
    //系统信息标题
    private String informationTitle;
    //系统信息内容
    private String informationContent;
    //系统信息发布时间
    private String informationTime;

    private String mysqlTableName = "system_information";
    private String serviceModular = "system-provider-other";
    private String modular = "SystemInformation";
    private String PAYMENT_URL = "/"+ serviceModular + "/" + modular;

}
