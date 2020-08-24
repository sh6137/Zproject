package com.spring.inres.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.format.annotation.DateTimeFormat.ISO;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.spring.menu.service.MenuService;
import com.spring.menu.vo.MenuVo;
import com.spring.res.service.ResService;
import com.spring.res.vo.ResVO;

@Controller
public class InResController {
	@Autowired
	MenuService menuService;
	@Autowired
	private ResService resService;

	@RequestMapping("/INSRES/allResList")
	public ModelAndView allResList(@RequestParam HashMap<String, Object> map) {
		
		HashMap<String, Object> map1 = new HashMap<String, Object>();
		List<MenuVo> menuList = menuService.getMenu(map1);
		ModelAndView mv = new ModelAndView();
		mv.addObject("menuList", menuList);
		mv.setViewName("Res/allRes");
		
		return mv;
		
	}
	
	@RequestMapping(value = "/INSRES/mainResList", method = RequestMethod.GET)
	@ResponseBody
	@DateTimeFormat(iso=ISO.DATE)
	public List<HashMap<String, Object>> resList(@RequestParam HashMap<String, Object> map) {

		List<ResVO> mainResList = resService.mainResList(map);
		List<HashMap<String, Object>> mainRList = new ArrayList<HashMap<String, Object>>();
		
		
		for (int i = 0; i < mainResList.size(); i++) {
			String title = mainResList.get(i).getRes_status_info() + " " + mainResList.get(i).getR_name();
			String start = mainResList.get(i).getStart_date();
			String end = mainResList.get(i).getEnd_date();
			String color = "#FFFFFF";
			String r_id = mainResList.get(i).getR_id();
			String imageurl = "";
			String strdate = mainResList.get(i).getStart_date();
			String textColor = "";
			String t = "";
			if (mainResList.get(i).getRes_status_info().equals("마감")) {
				//color = "#B30B00";
				imageurl = "/img/x.jpg";
				textColor = "#CCCCCC";
				t = "f";

			} else {
				//color = "#0078D7";
				imageurl = "/img/O.jpg";
				textColor = "#333333";
				t = "t";

			}
			HashMap<String, Object> mapp = new HashMap<String, Object>();
			mapp.put("title", title);
			mapp.put("start", start);
			mapp.put("end", end);
			mapp.put("color", color);
			mapp.put("r_id", r_id);
			mapp.put("imageurl", imageurl);
			mapp.put("strdate", strdate);
			mapp.put("textColor", textColor);
			mapp.put("t", t);
			
			mainRList.add(mapp);
		}
		
		return mainRList;

	}
	
}
