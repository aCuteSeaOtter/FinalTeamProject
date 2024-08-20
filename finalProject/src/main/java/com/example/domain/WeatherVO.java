package com.example.domain;

import lombok.Data;
 
@Data 
public class WeatherVO {

	private int weather_id;
	private String weather_date;
	private String weather_tempavg;
	private String weather_rainavg;
	private String weather_local;
}