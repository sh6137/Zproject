package com.spring.board.service.impl;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.board.dao.PdsDao;
import com.spring.board.service.PdsService;
import com.spring.board.vo.PdsVo;

@Service("pdsService")
public class PdsServiceImpl implements PdsService {
	
	@Autowired
	private PdsDao pdsDao;
	
	@Override
	public List<PdsVo> getPdsList(HashMap<String , Object> map) {
	
		List<PdsVo> pdsList = pdsDao.getPdsList(map);
		return pdsList;
			
	}

	@Override
	public void setWrite(HashMap<String, Object> map, HttpServletRequest request) {
	
		pdsDao.setWrite(map);
	}

	@Override
	public List<PdsVo> getView(HashMap<String, Object> map) {
		List<PdsVo> pdsList	= pdsDao.getView(map);
		
		return pdsList;
	}

	@Override
	public void setDelete(HashMap<String, Object> map) {
		pdsDao.delete(map);
		
	}

	@Override
	public void updatePds(HashMap<String, Object> map) {
			pdsDao.updatePds(map);
		
	}



	
	
}
