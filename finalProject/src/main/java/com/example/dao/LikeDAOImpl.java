package com.example.dao;

import java.util.HashMap;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.example.domain.LikeVO;

@Repository("likeDAO")
public class LikeDAOImpl implements LikeDAO{

	// mybatis 객체 자동 주입
	@Autowired
	private SqlSessionTemplate mybatis;
	
	// review_id와 member_email에 해당하는 좋아요 상태를 조회
	public int getLikeStatus(int review_id, String member_email) {
		// 파라미터를 저장할 맵 객체 생성
        Map<String, Object> params = new HashMap<>();
        // review_id 파라미터 추가
        params.put("review_id", review_id);
        // member_email 파라미터 추가
        params.put("member_email", member_email);
        // MyBatis를 사용하여 데이터베이스에서 좋아요 상태를 조회
        Integer status = mybatis.selectOne("LikeDAO.getLikeStatus", params);
        // 조회된 상태가 null이면 0을 반환
        return status != null ? status : 0;
    } 

    // 좋아요 추가
    public void insertLike(LikeVO like) {
        mybatis.insert("LikeDAO.insertLike", like);
    }

    // 좋아요 상태 변경
    public void updateLike(LikeVO like) {
        mybatis.update("LikeDAO.updateLike", like);
    }

    // 좋아요 삭제
    public void deleteLike(int review_id, String member_email) {
        Map<String, Object> params = new HashMap<>();
        params.put("review_id", review_id);
        params.put("member_email", member_email);
        mybatis.delete("LikeDAO.deleteLike", params);
    }

    // 좋아요 갯수
    public int countLikes(int review_id) {
        return mybatis.selectOne("LikeDAO.countLikes", review_id);
    }
}
