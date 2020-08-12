package com.spring.res.dao;

import java.util.HashMap;
import java.util.List;

import com.spring.res.vo.ResVO;

public interface ResDao {

	List<ResVO> recresInfo(HashMap<String, Object> map);

	void resCc(HashMap<String, Object> map);

	List<ResVO> resList(HashMap<String, Object> map);

}
