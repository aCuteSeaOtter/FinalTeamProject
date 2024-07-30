package com.example.domain;

import lombok.Data;

@Data
public class TravelInfoVO {
	private int info_id;
	private String member_email;
	private String info_name;
	private String trip_place;
	private String start_date;
	private String end_date;
	private String who_tag;
	private String style_tag;
}
