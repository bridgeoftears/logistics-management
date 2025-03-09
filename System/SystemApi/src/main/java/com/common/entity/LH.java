package com.common.entity;

import com.common.BasePojo;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class LH  extends BasePojo {
    //ID
    private String lhId;
    //标题
    private String lhTitle;
    //内容
    private String lhContent;
    //发布时间
    private String lhTime;

    private String mysqlTableName = "lh";
    private String serviceModular = "system-provider-other";
    private String modular = "LH";
    private String PAYMENT_URL = "/"+ serviceModular + "/" + modular;
}
