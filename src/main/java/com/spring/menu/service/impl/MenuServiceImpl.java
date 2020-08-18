package com.spring.menu.service.impl;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.menu.dao.MenuDao;
import com.spring.menu.service.MenuService;
import com.spring.menu.vo.MenuVo;

@Service("menuService")
public class MenuServiceImpl implements MenuService {

	@Autowired
	private MenuDao menuDao;

	@Override
	public List<MenuVo> getMainMenu(HashMap<String, Object> map) {
		List<MenuVo> mainMenu = menuDao.getMainMenu(map);
		return mainMenu;
	}

	@Override
	public List<MenuVo> getSubMenu(HashMap<String, Object> map2) {
		List<MenuVo> subMenu = menuDao.getSubMenu(map2);
		return subMenu;
	}

	@Override
	public List<MenuVo> getMenu(HashMap<String, Object> map) {
		List<MenuVo> menuList = menuDao.getMenu(map);
		return menuList;
	}
}
