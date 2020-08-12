package com.spring.menu.dao;

import java.util.HashMap;
import java.util.List;

import org.springframework.stereotype.Repository;

import com.spring.info.vo.InfoVO;
import com.spring.menu.vo.MenuVO;

public interface MenuDao {

	List<MenuVO> getList(HashMap<String, Object> map);

}
