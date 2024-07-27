package com.example.dao;

import java.util.HashMap;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.example.domain.HateVO;

@Repository("hateDAO")
public class HateDAOImpl implements HateDAO{

	// mybatis 객체 자동 주입
	@Autowired
	private SqlSessionTemplate mybatis;
	
	// review_id와 member_email에 해당하는 싫어요 상태를 조회
	public int getHateStatus(int review_id, String member_email) {
		// 파라미터를 저장할 맵 객체 생성
        Map<String, Object> params = new HashMap<>();
        // review_id 파라미터 추가
        params.put("review_id", review_id);
        // member_email 파라미터 추가
        params.put("member_email", member_email);
        // MyBatis를 사용하여 데이터베이스에서 싫어요 상태를 조회
        Integer status = mybatis.selectOne("HateDAO.getHateStatus", params);
        // 조회된 상태가 null이면 0을 반환
        return status != null ? status : 0;
    }
 
    // 싫어요 추가
    public void insertHate(HateVO hate) {
        mybatis.insert("HateDAO.insertHate", hate);
    }

    // 싫어요 상태 변경
    public void updateHate(HateVO hate) {
        mybatis.update("HateDAO.updateHate", hate);
    }

    // 싫어요 삭제
    public void deleteHate(int review_id, String member_email) {
        Map<String, Object> params = new HashMap<>();
        params.put("review_id", review_id);
        params.put("member_email", member_email);
        mybatis.delete("HateDAO.deleteHate", params);
    }

    // 싫어요 갯수
    public int countHates(int review_id) {
        return mybatis.selectOne("HateDAO.countHates", review_id);
    }
}
