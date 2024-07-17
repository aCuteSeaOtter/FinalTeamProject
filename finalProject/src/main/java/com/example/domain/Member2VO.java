package com.example.domain;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
public class Member2VO{


    private String memberemail;
    private String memberpass;
    
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date memberbirth;
    
    private String membernickname;
    private String membergender;
    
    @DateTimeFormat(pattern = "yyyy-MM-dd") // 날짜형식지정
    private Date memberregdate;

}
