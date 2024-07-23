package com.example.dao;

import java.util.HashMap;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.example.domain.HateVO;

@Repository("hateDAO")
public class HateDAOImpl implements HateDAO{

	@Autowired
	private SqlSessionTemplate mybatis;
	
	public int getHateStatus(int review_id, String member_email) {
        Map<String, Object> params = new HashMap<>();
        params.put("review_id", review_id);
        params.put("member_email", member_email);
        Integer status = mybatis.selectOne("HateDAO.getHateStatus", params);
        return status != null ? status : 0;
    }

    @Override
    public void insertHate(HateVO hate) {
        mybatis.insert("HateDAO.insertHate", hate);
    }

    @Override
    public void updateHate(HateVO hate) {
        mybatis.update("HateDAO.updateHate", hate);
    }

    @Override
    public void deleteHate(int review_id, String member_email) {
        Map<String, Object> params = new HashMap<>();
        params.put("review_id", review_id);
        params.put("member_email", member_email);
        mybatis.delete("HateDAO.deleteHate", params);
    }

    @Override
    public int countHates(int review_id) {
        return mybatis.selectOne("HateDAO.countHates", review_id);
    }
}
