package com.example.domain;

import lombok.Data;
 
@Data 
public class MagazineVO {

	Integer artl_id;		// 매거진 번호
	String 	artl_name;		// 부제
	String 	artl_local;		// 기사 지역
	String 	artl_img;		// 매거진 사진
	String 	artl_link;		// 클릭 시 링크
	String 	artl_title;		// 제목
	String 	artl_tag;		// 해시태그
	String 	artl_pri_tag;	// 보여지는 해시태그
}