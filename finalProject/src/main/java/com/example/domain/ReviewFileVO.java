package com.example.domain;

import lombok.Data;

@Data 
public class ReviewFileVO {

	private int 	review_id; 			// 리뷰 이미지 번호
	private String 	origin_file_name; 	// 사용자 지정 파일 이름
	private String 	file_name; 			// 만들어진 파일 이름
	private String 	file_path; 			// 파일경로
}
