package com.example.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.example.domain.PlanVO;

/**  
 DAO와 Mapper 연결
 	[1] Mapper에서
 		<mapper namespace="com.example.dao.BoardDAO">
 	 
 	[2] DAO 클래스에서
 		함수명과 Mapper에서의 ID값 동일해야함
*/
@Mapper		// Mapper 호출 
public interface PlanDAO {
	public List<PlanVO> selectAttrList();
	public List<PlanVO> insertPlan(@Param("day") int day, @Param("attrIds") List<Integer> attrIds);
    public void insertPlanItem(@Param("day") int day, @Param("attrId") int attrId);
    public PlanVO selectInsertedPlan(@Param("day") int day, @Param("attrId") int attrId);
}
