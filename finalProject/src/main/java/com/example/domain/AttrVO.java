package com.example.domain;

import lombok.Data;
 
@Data 
public class AttrVO {

	private int attr_id;
	private String attr_name;
	private String info_title;
	private String info_content;
	private int attrimg_id;
	private String attr_local;
	private String attr_tag;
}