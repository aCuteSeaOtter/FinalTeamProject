package com.example.domain;

import java.util.List;

import lombok.Data;

@Data
public class BoardVO {
	
	private int seq;
	private String title;
	private String writer;
	private String content;
	private String regdate;
	private int cnt;
	private int fileid;
	private int star;
	private int good;
	private int bad;
	private String id;
}

