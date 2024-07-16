package com.example.dao;

import java.util.HashMap;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.example.domain.LikeVO;

@Repository("likeDAO")
public class LikeDAOImpl implements LikeDAO{

	@Autowired
	private SqlSessionTemplate mybatis;
	
	public int getLikeStatus(int bno, String id) {
        Map<String, Object> params = new HashMap<>();
        params.put("bno", bno);
        params.put("id", id);
        Integer status = mybatis.selectOne("LikeDAO.getLikeStatus", params);
        return status != null ? status : 0;
    }

    @Override
    public void insertLike(LikeVO like) {
        mybatis.insert("LikeDAO.insertLike", like);
    }

    @Override
    public void updateLike(LikeVO like) {
        mybatis.update("LikeDAO.updateLike", like);
    }

    @Override
    public void deleteLike(int bno, String id) {
        Map<String, Object> params = new HashMap<>();
        params.put("bno", bno);
        params.put("id", id);
        mybatis.delete("LikeDAO.deleteLike", params);
    }

    @Override
    public int countLikes(int bno) {
        return mybatis.selectOne("LikeDAO.countLikes", bno);
    }
}
