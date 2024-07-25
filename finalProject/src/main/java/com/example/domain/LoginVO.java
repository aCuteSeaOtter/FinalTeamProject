package com.example.domain;

import java.util.Date;

import jakarta.persistence.Entity;
import lombok.Data;

import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
public class LoginVO{


	private String member_email;
	
	private String member_pass;
	private Date member_birth;
	private String member_gender;
	private String member_nickname;
	private Date member_regdate;
	private Integer member_review;
   

	//년 월 일
	private int year;
	private int month;
	private int day;

}
    