package com.common.entity;

import com.common.BasePojo;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

//公告
@Data
@AllArgsConstructor
@NoArgsConstructor
public class Notice  extends BasePojo {
    //公告ID
    private String noticeId;
    //公告标题
    private String noticeTitle;
    //公告内容
    private String noticeContent;
    //公告发布时间
    private String noticeTime;


    private String mysqlTableName = "notice";
    private String serviceModular = "system-provider-other";
    private String modular = "Notice";
    private String PAYMENT_URL = "/"+ serviceModular + "/" + modular;
}
