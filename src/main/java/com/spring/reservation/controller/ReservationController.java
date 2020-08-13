package com.spring.reservation.controller;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.spring.reservation.service.ReservationService;
import com.spring.reservation.vo.ReservationVo;


@Controller
public class ReservationController {

	@Autowired
	ReservationService reservationService;
	
	@RequestMapping("/Res")
	public String resHome() {
		return "reservation/reshome";

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
		
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("reservation/resdetail");
		mv.addObject("map",map);
	
		
		return mv;

	}
	@RequestMapping("/Res/Confirm")
	public ModelAndView confirm(@RequestParam HashMap<String,Object> map){
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("reservation/reshome");
		mv.addObject("map",map);
		
		return mv;	
	}
	
	
	
	
}