package com.common.entity;

import com.common.BasePojo;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor

public class Assets  extends BasePojo {
    private String assetsId;
    private String assetsOwnerName;
    private String assetsDetailed;
    private String assetsNum;
    private String assetsPrice;

    private String mysqlTableName = "assets";

    private String serviceModular = "system-provider-other";
    private String modular = "Assets";
    private String PAYMENT_URL = "/"+ serviceModular + "/" + modular;

}
