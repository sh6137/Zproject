package com.spring.menu.dao.impl;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spring.menu.dao.MenuDao;
import com.spring.menu.vo.MenuVo;

@Repository("menuDao")
public class MenuDaoImpl implements MenuDao {
	
	@Autowired
	private SqlSession sqlSession;

	@Override
	public List<MenuVo> getMainMenu(HashMap<String, Object> map) {
		sqlSession.selectList("Menu.getMainMenus", map);
		List<MenuVo> mainmenu = (List<MenuVo>) map.get("result");
		return mainmenu;
	}

	@Override
	public List<MenuVo> getSubMenu(HashMap<String, Object> map2) {
		sqlSession.selectList("Menu.getSubMenus", map2);
		List<MenuVo> submenu = (List<MenuVo>) map2.get("result");
		return submenu;
	}

	@Override
	public List<MenuVo> getMenu(HashMap<String, Object> map) {
		sqlSession.selectList("Menu.getMenu", map);
		List<MenuVo> menuList = (List<MenuVo>) map.get("result");
		return menuList;
	}

	


}
