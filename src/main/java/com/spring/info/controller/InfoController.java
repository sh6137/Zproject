package com.spring.info.controller;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.spring.info.service.InfoService;
import com.spring.info.vo.InfoVO;
import com.spring.menu.service.MenuService;
import com.spring.menu.vo.MenuVo;
import com.spring.res.service.ResService;
import com.spring.res.vo.ResVO;

@Controller
public class InfoController {

	@Autowired
	InfoService infoService;
	@Autowired
	ResService resService;
	@Autowired
	MenuService menuService;
	/*
	 * @RequestMapping("/") public ModelAndView home() {
	 * 
	 * HashMap<String, Object> map = new HashMap<String, Object>();
	 * map.put("com_id", "COM0010"); System.out.println("menu map : " + map);
	 * List<MenuVO> menuList = menuService.getList(map);
	 * 
	 * 
	 * ModelAndView mv = new ModelAndView(); mv.setViewName("home");
	 * //mv.addObject("menuList", menuList);
	 * 
	 * return mv;
	 * 
	 * }
	 */

	@RequestMapping("/INFO/SerInfo")
	public ModelAndView info(@RequestParam HashMap<String, Object> map) {

		InfoVO infoVO = infoService.serInfo(map);
		HashMap<String, Object> map1 = new HashMap<String, Object>();
		List<MenuVo> menuList = menuService.getMenu(map1);
		System.out.println("/INFO/SerInfo의 map : " + map);

		ModelAndView mv = new ModelAndView();
		mv.setViewName("Info/serInfo");
		mv.addObject("menuList", menuList);
		mv.addObject("infoVO", infoVO);
		mv.addObject("map", map);

		return mv;

	}

	@RequestMapping("/INFO/ConInfo")
	public ModelAndView conInfo(@RequestParam HashMap<String, Object> map) {

		InfoVO infoVO = infoService.conInfo(map);
		System.out.println("/INFO/ConInfo의 map : " + map);
		HashMap<String, Object> map1 = new HashMap<String, Object>();
		List<MenuVo> menuList = menuService.getMenu(map1);
		String returnURL = "";

		if (infoVO != null) {
			returnURL = "Info/updateInfo";
		} else {
			returnURL = "redirect:/INFO/SerInfo?m_id=" + map.get("m_id") + "&lvl=1";
		}

		ModelAndView mv = new ModelAndView();
		mv.setViewName(returnURL);
		mv.addObject("menuList", menuList);
		mv.addObject("infoVO", infoVO);
		mv.addObject("map", map);

		return mv;

	}

	@RequestMapping("/INFO/UpdateInfo")
	public ModelAndView updateInfo(@RequestParam HashMap<String, Object> map) {
		System.out.println("/INFO/UpdateInfo의 map : " + map);
		infoService.updateInfo(map);
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("redirect:/INFO/SerInfo?m_id=" + map.get("m_id") + "&lvl=1");

		return mv;

	}

	@RequestMapping("/INFO/DropInfo")
	public ModelAndView deleteInfo(HttpSession session, @RequestParam HashMap<String, Object> map) {
		System.out.println("/INFO/DropInfo의 map : " + map);
		infoService.deleteInfo(map);
		session.removeAttribute("login");
		session.invalidate();
		ModelAndView mv = new ModelAndView();
		mv.setViewName("redirect:/");

		return mv;

	}

	@RequestMapping("/RES/ResInfo")
	public ModelAndView resInfo(@RequestParam HashMap<String, Object> map) {
		System.out.println("/RES/ResInfo의 map : " + map);
		List<ResVO> recresList = resService.recresInfo(map);
		System.out.println("/RES/ResInfo의 recresList : " + recresList);
		HashMap<String, Object> map1 = new HashMap<String, Object>();
		List<MenuVo> menuList = menuService.getMenu(map1);
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("Info/resInfo");
		mv.addObject("map", map);
		mv.addObject("recresList", recresList);
		mv.addObject("menuList", menuList);
		
		return mv;

	}

	@RequestMapping("/RES/CanRE")
	public ModelAndView canRE(@RequestParam HashMap<String, Object> map) {
		System.out.println("/RES/CanRE의 map : " + map);
		resService.resCc(map);
		
		HashMap<String, Object> map1 = new HashMap<String, Object>();
		List<MenuVo> menuList = menuService.getMenu(map1);
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("redirect:/RES/ResInfo?m_id=" + map.get("m_id"));
		mv.addObject("map", map);
		mv.addObject("menuList", menuList);
		
		return mv;

	}

	@RequestMapping("/RES/ResListForm")
	public ModelAndView resListForm(@RequestParam HashMap<String, Object> map) {
		System.out.println("/RES/ResListForm의 map : " + map);
		HashMap<String, Object> map1 = new HashMap<String, Object>();
		List<MenuVo> menuList = menuService.getMenu(map1);
		
		ModelAndView mv = new ModelAndView();
		mv.addObject("menuList", menuList);
		mv.setViewName("Info/resListt");
		mv.addObject("map", map);

		return mv;

	}

	@RequestMapping(value = "/RES/ResList", method = RequestMethod.GET)
	@ResponseBody
	public List<ResVO> resList(@RequestParam HashMap<String, Object> map) {
		System.out.println("/RES/ResListForm의 map : " + map);
		
		ModelAndView mv = new ModelAndView();

		List<ResVO> resList = resService.resList(map);
		// mv.addObject("resList", resList);
		// mv.setViewName("Info/resListt");
		// mv.addObject("map", map);

		return resList;

	}

}