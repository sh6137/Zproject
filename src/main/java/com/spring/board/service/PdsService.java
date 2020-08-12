package com.spring.board.service;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import com.spring.board.vo.PdsVo;

public interface PdsService {

	List<PdsVo> getPdsList(HashMap<String, Object> map);

	void setWrite(HashMap<String, Object> map, HttpServletRequest request);

	List<PdsVo> getView(HashMap<String, Object> map);

	void setDelete(HashMap<String, Object> map);

	void updatePds(HashMap<String, Object> map);

	




}
