package com.spring.info.service;

import java.util.HashMap;

import com.spring.info.vo.InfoVO;

public interface InfoService {

	InfoVO serInfo(HashMap<String, Object> map);

	InfoVO conInfo(HashMap<String, Object> map);

	void updateInfo(HashMap<String, Object> map);

	void deleteInfo(HashMap<String, Object> map);



}
