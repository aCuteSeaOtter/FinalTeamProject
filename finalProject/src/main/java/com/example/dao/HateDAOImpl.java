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
	
	public int getHateStatus(int bno, String id) {
        Map<String, Object> params = new HashMap<>();
        params.put("bno", bno);
        params.put("id", id);
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
    public void deleteHate(int bno, String id) {
        Map<String, Object> params = new HashMap<>();
        params.put("bno", bno);
        params.put("id", id);
        mybatis.delete("HateDAO.deleteHate", params);
    }

    @Override
    public int countHates(int bno) {
        return mybatis.selectOne("HateDAO.countHates", bno);
    }
}
