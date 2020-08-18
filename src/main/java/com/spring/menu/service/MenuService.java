package com.spring.menu.service;

import java.util.HashMap;
import java.util.List;

import com.spring.menu.vo.MenuVo;

public interface MenuService {
	List<MenuVo> getMainMenu(HashMap<String, Object> map);

	List<MenuVo> getSubMenu(HashMap<String, Object> map2);

	List<MenuVo> getMenu(HashMap<String, Object> map);

}
