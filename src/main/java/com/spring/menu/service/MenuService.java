package com.spring.menu.service;

import java.util.HashMap;
import java.util.List;

import com.spring.menu.vo.MenuVO;

public interface MenuService {

	List<MenuVO> getList(HashMap<String, Object> map);


}
