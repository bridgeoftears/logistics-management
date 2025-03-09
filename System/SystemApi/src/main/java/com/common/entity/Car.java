package com.common.entity;

import com.common.BasePojo;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Car  extends BasePojo {
    private String carNum;
    private String time;
    private String type;

    private String mysqlTableName = "car";
    private String serviceModular = "system-provider-other";
    private String modular = "Car";
    private String PAYMENT_URL = "/"+ serviceModular + "/" + modular;
}
