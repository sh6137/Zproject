package com.spring.board.dao;

import java.util.HashMap;
import java.util.List;

import com.spring.board.vo.PdsVo;


public interface PdsDao {

	List<PdsVo> getPdsList(HashMap<String, Object> map);

	void setWrite(HashMap<String, Object> map);

	List<PdsVo> getView(HashMap<String, Object> map);

	void delete(HashMap<String, Object> map);

	void updatePds(HashMap<String, Object> map);








}
