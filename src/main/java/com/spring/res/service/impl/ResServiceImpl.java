package com.spring.res.service.impl;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.res.dao.ResDao;
import com.spring.res.service.ResService;
import com.spring.res.vo.ResVO;

@Service("resService")
public class ResServiceImpl implements ResService {

	@Autowired
	private ResDao resDao;

	@Override
	public List<ResVO> recresInfo(HashMap<String, Object> map) {

		List<ResVO> resList = resDao.recresInfo(map);
		
		return resList;
	}

	@Override
	public void resCc(HashMap<String, Object> map) {
		resDao.resCc(map);
	}

	@Override
	public List<ResVO> resList(HashMap<String, Object> map) {

		List<ResVO> resList = resDao.resList(map);
		
		return resList;
	}
	
	@Override
	public List<ResVO> mainResList(HashMap<String, Object> map) {
		
		List<ResVO> mainResList = resDao.mainResList(map);
		
		return mainResList;
	}

	
}
