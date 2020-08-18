package com.spring.room.controller;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.spring.menu.service.MenuService;
import com.spring.menu.vo.MenuVo;
import com.spring.room.service.RoomService;
import com.spring.room.vo.RoomVo;

@Controller
public class RoomController {
	
	@Autowired
	private RoomService roomService;
	
	@Autowired
	private MenuService menuService;
	
	// /Room/List?r_id=101
	@RequestMapping("/ROOM/List")
	public ModelAndView roomList(@RequestParam HashMap<String, Object> map) {
		// menuList //		
		HashMap<String, Object> map1 = new HashMap<String, Object>();
		List<MenuVo> menuList = menuService.getMenu(map1);
		// menuList //
		
		// RoomList //
		List<RoomVo> roomList = roomService.getRoomList(map);
		// end      //
		
		// ROOM 1EA //
		List<RoomVo> room = roomService.getRoom(map);
		// ROOM 1EA END //
		
		// ROOM Detail //
//		HashMap<String, Object> deMap = new HashMap<String, Object>();
//		deMap.put("r_id", "101");
		List<RoomVo> detail = roomService.getRoomDetail(map);
		// ROOM Detail END //
		
		ModelAndView mv = new ModelAndView();
		mv.addObject("room", room);
		System.out.println("room: " + room);		
		mv.addObject("rDetail", detail);
		System.out.println("detail: " + detail);
		mv.addObject("roomList", roomList);
		mv.addObject("menuList", menuList);
		mv.setViewName("room/101");
		return mv;
	}

}
