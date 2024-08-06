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
public interface TravelPlanDAO {
	void insertTravelPlan(String info_id, int attr_id, int plan_day, int plan_seq);
	List<TravelPlanVO> selectTravelPlan(String info_id, int plan_day);
	TravelPlanVO selectTravelPlanById(int plan_id);
	int countTravelPlans(String info_id, int plan_day);
	void deleteAllTravelPlan(String info_id, int plan_day);
	void deleteTravelPlan(String info_id, int plan_day, int attr_id);
	public List<Map<String, Object>> selectedAttrList(int attr_id, int plan_day);
}
