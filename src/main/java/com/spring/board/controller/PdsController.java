package com.spring.board.controller;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.spring.board.service.PdsService;
import com.spring.board.vo.PdsVo;
import com.spring.menu.service.MenuService;
import com.spring.menu.vo.MenuVo;

@Controller
public class PdsController {

	@Autowired
	private PdsService pdsService;

	@Autowired
	private MenuService menuService;
	
	  @RequestMapping("/PDS/home") public String home(
	  
	  @RequestParam HashMap<String , Object> map){
	  

	  return "redirect:/PDS/List?com_id=COM0023"; }
	 

	@RequestMapping("/PDS/List")
	public ModelAndView pdsList(@RequestParam HashMap<String, Object> map) {
		
	//	System.out.println("list 확인1:" + map);
		
		
		List<PdsVo> pdsList = pdsService.getPdsList(map);
		List<MenuVo> menuList = menuService.getMenu(map);

		ModelAndView mv = new ModelAndView();
		mv.addObject("com_id", map.get("com_id"));
		mv.addObject("menuList", menuList);
		mv.addObject("pdsList", pdsList);
		mv.setViewName("board/list");
		return mv;
	}

	@RequestMapping("/PDS/WriteForm")
	public ModelAndView writeForm(@RequestParam HashMap<String, Object> map, HttpServletRequest request) {

		// List<PdsVo> pdsList = pdsService.getPdsList(map);

		ModelAndView mv = new ModelAndView();
        System.out.println(map);
		mv.addObject("com_id", map.get("com_id"));
		mv.addObject("pdsVo", map);
		mv.setViewName("board/write");

		return mv;

	}

	@RequestMapping("/PDS/Write")
	public ModelAndView write(@RequestParam HashMap<String, Object> map, HttpServletRequest request) {

		pdsService.setWrite(map, request);

		ModelAndView mv = new ModelAndView();

		mv.addObject("com_id", map.get("com_id"));

		mv.setViewName("redirect:/PDS/List");

		return mv;

	}
	
	@RequestMapping("/PDS/View")
	public ModelAndView view(@RequestParam HashMap<String,Object> map , HttpServletRequest reques)  {
		
		ModelAndView mv = new ModelAndView();
		List<PdsVo> voList = pdsService.getView(map);
	  	System.out.println("있는가?" + map.get("com_id"));
		
		mv.addObject("pdsVo" , voList.get(0));
		mv.addObject("com_id", map.get("com_id"));
		
		System.out.println("받아오는값?" + voList.get(0));
		mv.setViewName("board/content");
		

		return mv;
		
	}
	
	
	@RequestMapping("/PDS/Delete")
	public ModelAndView delete(@RequestParam HashMap<String,Object> map , HttpServletRequest request) {
		
		//삭제
		pdsService.setDelete(map);
		
		ModelAndView mv = new ModelAndView();
		mv.addObject("com_id", map.get("com_id"));
		System.out.println(map);
		mv.setViewName("redirect:/PDS/List");
		return mv;
	}

	@RequestMapping("/PDS/UpdateForm")
	public ModelAndView updateForm(
			@RequestParam HashMap<String , Object> map, HttpServletRequest request) {
		
		List<PdsVo> pdsVo = pdsService.getView(map);
		
		System.out.println("수정:" + pdsVo.get(0));
		ModelAndView mv = new ModelAndView();
		
		map.put("m_id", "login.m_id"); // 임시로 session 받아오기
		
		mv.setViewName("board/update");
		mv.addObject("pdsVo" , pdsVo.get(0));
		
		return mv;
	}
			
		@RequestMapping("/PDS/Update")
		public ModelAndView update(@RequestParam HashMap<String , Object> map, HttpServletRequest request) {
			System.out.println("업데이트 1" + map);
			pdsService.updatePds(map);
			ModelAndView mv = new ModelAndView();
			mv.addObject("com_id", map.get("com_id"));
			System.out.println("수정2:" + map);
			mv.setViewName("redirect:/PDS/List");

			return mv;
			
			
		}
			
	
	
	
	
	
}
