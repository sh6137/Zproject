package com.spring.reservation.controller;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.spring.menu.service.MenuService;
import com.spring.menu.vo.MenuVo;
import com.spring.reservation.service.ReservationService;
import com.spring.reservation.vo.ReservationVo;


@Controller
public class ReservationController {

	@Autowired
	ReservationService reservationService;
	
	@Autowired
	MenuService menuService;
	
	@RequestMapping("/Res")
	public ModelAndView resHome() {
		HashMap<String, Object> map = new HashMap<String, Object>();
		List<MenuVo> menuList = menuService.getMenu(map);
		
		ModelAndView mv = new ModelAndView();
		mv.addObject("menuList", menuList);
		mv.setViewName("reservation/reshome");
		return mv;

	}
	
	
	@RequestMapping("/Res/Search")
	@ResponseBody 
	public List<ReservationVo> search(@RequestParam HashMap<String,Object> map){
		
		
		List<ReservationVo> roomList = reservationService.roomList(map);
		System.out.println("controller room list:" + roomList);
		
	return roomList;
		
		
	}
	
	@RequestMapping("/Res/Detail")
	public ModelAndView resDetail (@RequestParam HashMap<String,Object> map) {
		
		System.out.println("RES/detail : " + map.get("r_idx"));
		HashMap<String, Object> map1 = new HashMap<String, Object>();
		List<MenuVo> menuList = menuService.getMenu(map1);
		
		ModelAndView mv = new ModelAndView();
		mv.addObject("menuList", menuList);
		mv.setViewName("reservation/resdetail");
		mv.addObject("map",map);
	
		
		return mv;

	}
	@RequestMapping("/Res/Confirm")
	public ModelAndView book(@RequestParam HashMap<String,Object> map){
		
		reservationService.makeRes(map);
		
		
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("redirect:/RES/ResInfo?m_id="+ map.get("m_id"));
		
		
		System.out.println(map);
		return mv;	
	}
	
	
	
	
}
