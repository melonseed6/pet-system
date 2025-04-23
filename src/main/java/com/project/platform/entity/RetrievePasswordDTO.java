package com.project.platform.entity;

import lombok.Data;

@Data
public class RetrievePasswordDTO {
    private String type;
    private String tel;
    private String code;
    private String password;
}
