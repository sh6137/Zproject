package com.spring.info.service.impl;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.info.dao.InfoDao;
import com.spring.info.service.InfoService;
import com.spring.info.vo.InfoVO;

@Service("infoService")
public class InfoServiceImpl implements InfoService {

	@Autowired
	InfoDao infoDao;

	@Override
	public InfoVO serInfo(HashMap<String, Object> map) {
		
		List<InfoVO> infoList = infoDao.serInfo(map);
		
		InfoVO infoVO = infoList.get(0);
		
		return infoVO;
	}

	@Override
	public InfoVO conInfo(HashMap<String, Object> map) {
		
		List<InfoVO> infoList = infoDao.conInfo(map);
		InfoVO infoVO = infoList.get(0);
		
		return infoVO;
	}

	@Override
	public void updateInfo(HashMap<String, Object> map) {
		infoDao.updateInfo(map);
	}

	@Override
	public void deleteInfo(HashMap<String, Object> map) {
		infoDao.deleteInfo(map);
	}


	


}
