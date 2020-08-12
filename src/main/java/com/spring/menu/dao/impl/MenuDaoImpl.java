package com.spring.menu.dao.impl;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spring.menu.dao.MenuDao;
import com.spring.menu.vo.MenuVO;

@Repository("menuDao")
public class MenuDaoImpl implements MenuDao {

	@Autowired
	private SqlSession sS;

	@Override
	public List<MenuVO> getList(HashMap<String, Object> map) {
		
		sS.selectList("menu.menuList", map);
		List<MenuVO> menuList = (List<MenuVO>) map.get("result");
		
		return menuList;
	}
	
}
