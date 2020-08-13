package com.spring.info.dao.impl;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spring.info.dao.InfoDao;
import com.spring.info.vo.InfoVO;

@Repository("infoDao")
public class InfoDaoImpl implements InfoDao {

	@Autowired
	SqlSession sS;

	@Override
	public List<InfoVO> serInfo(HashMap<String, Object> map) {
		
		sS.selectOne("info.myInfo", map);
		List<InfoVO> infoList = (List<InfoVO>) map.get("result");
		
		return infoList;
	}

	@Override
	public List<InfoVO> conInfo(HashMap<String, Object> map) {
		
		sS.selectOne("info.conInfo", map);
		List<InfoVO> infoList = (List<InfoVO>) map.get("result");
		
		return infoList;
	}

	@Override
	public void updateInfo(HashMap<String, Object> map) {
		sS.update("info.updateInfo", map);
	}

	@Override
	public void deleteInfo(HashMap<String, Object> map) {
		sS.delete("info.deleteInfo", map);
	}
	



}
