package com.example.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import com.example.domain.TravelPlanVO;

/**  
 DAO와 Mapper 연결
 	[1] Mapper에서
 		<mapper namespace="com.example.dao.BoardDAO">
 	 
 	[2] DAO 클래스에서
 		함수명과 Mapper에서의 ID값 동일해야함
*/
@Mapper		// Mapper 호출 
public interface MyPageDAO {
	// 내 정보
	List<Map<String, Object>> selectMyInfo(String user_id);
	
	// 내 정보 수정
	void modifyMyInfo(String user_id, String pass, String nickname, String birth);
	
	// 나의 일정
	List<Map<String, Object>> selectPlanList(String user_id);
	
	// 나의 후기
	List<Map<String, Object>> selectReviewList(String user_id);
	
	// 나의 신고
	List<Map<String, Object>> selectReportList(String user_id);
	
	// 신고한 게시글로 이동
	int selectReport(int report_id);
}
