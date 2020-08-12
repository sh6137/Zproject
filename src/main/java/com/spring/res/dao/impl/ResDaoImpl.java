package com.spring.res.dao.impl;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spring.res.dao.ResDao;
import com.spring.res.vo.ResVO;

@Repository("resDao")
public class ResDaoImpl implements ResDao {

	@Autowired
	private SqlSession sS;

	@Override
	public List<ResVO> recresInfo(HashMap<String, Object> map) {
		
		sS.selectOne("res.resInfo", map);
		List<ResVO> resList = (List<ResVO>) map.get("result");
		
		return resList;
	}

	@Override
	public void resCc(HashMap<String, Object> map) {
		sS.insert("res.resCc", map);
	}

	@Override
	public List<ResVO> resList(HashMap<String, Object> map) {
		
		sS.selectList("res.resList", map);
		List<ResVO> resList = (List<ResVO>) map.get("result");
		
		return resList;
	}
	
}
