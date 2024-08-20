package com.example.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.example.domain.TravelInfoVO;

/**  
 DAO와 Mapper 연결
 	[1] Mapper에서
 		<mapper namespace="com.example.dao.BoardDAO">
 	 
 	[2] DAO 클래스에서
 		함수명과 Mapper에서의 ID값 동일해야함
*/
@Mapper		// Mapper 호출 
public interface TravelInfoDAO {
	void insertTravelInfo(String member_email, String info_name, String trip_place, String start_date, String end_date, String who_tag, String style_tag);
	
	String selectTravelInfo();
	
	int existsByMemberEmail(@Param("memberEmail") String memberEmail);
    
	public List<TravelInfoVO> getAllTravelInfo(Map<String, Object> params);
	
    TravelInfoVO getTravelInfoById(int infoId);
    
    // 상세보기
    List<Map<String, Object>> selectPlan(int info_id);
    
    public List<String> calDates(int infoId);
    
    // 페이징
    public int getTotalCount(Map<String, Object> params);
    
    // 스타일 필터링
    List<TravelInfoVO> filterByStyle(Map<String, Object> params);
    
    // 대상 필터링
    List<TravelInfoVO> filterByWho(Map<String, Object> params);

    // 스타일 필터링에 대한 총 항목 수 조회
    int getTotalCountForStyle(String style);

    // 대상 필터링에 대한 총 항목 수 조회
    int getTotalCountForWho(String who);

    int insertTravelInfoNew(String member_email, String info_name, String trip_place, String start_date, String end_date, String who_tag, String style_tag);
    
    int getNextInfoId();
}
