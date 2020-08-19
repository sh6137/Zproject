package com.spring.menu.controller;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.spring.menu.service.MenuService;
import com.spring.menu.vo.MenuVo;

@Controller
public class MenuController {
	
	@Autowired
	private MenuService menuService;
	
	@RequestMapping("/ABOUT/COM0016")
	public ModelAndView about_intro() {
		HashMap<String, Object> map = new HashMap<String, Object>();
		List<MenuVo> menuList = menuService.getMenu(map);
		
		ModelAndView mv = new ModelAndView();
		mv.addObject("menuList", menuList);
		mv.setViewName("about/intro");
		return mv;
	}
	
	@RequestMapping("/ABOUT/COM0017")
	public ModelAndView about_fac() {
		HashMap<String, Object> map = new HashMap<String, Object>();
		List<MenuVo> menuList = menuService.getMenu(map);
		
		ModelAndView mv = new ModelAndView();
		mv.addObject("menuList", menuList);
		mv.setViewName("about/fac");
		return mv;
	}

}
