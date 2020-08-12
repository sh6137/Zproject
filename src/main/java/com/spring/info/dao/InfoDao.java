package com.spring.info.dao;

import java.util.HashMap;
import java.util.List;

import org.springframework.stereotype.Repository;

import com.spring.info.vo.InfoVO;

public interface InfoDao {

	List<InfoVO> serInfo(HashMap<String, Object> map);

	List<InfoVO> conInfo(HashMap<String, Object> map);

	void updateInfo(HashMap<String, Object> map);

	void deleteInfo(HashMap<String, Object> map);


}
