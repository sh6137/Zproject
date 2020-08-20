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

import com.spring.res.service.ResService;
import com.spring.res.vo.ResVO;

@Controller
public class InResController {
	
	@Autowired
	private ResService resService;

	@RequestMapping("/INSRES/allResList")
	public ModelAndView allResList(@RequestParam HashMap<String, Object> map) {
		
		ModelAndView mv = new ModelAndView();
		
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
			String color = "";
			if (mainResList.get(i).getRes_status_info().equals("마감")) {
				color = "#B30B00";

			} else {
				color = "#0078D7";

			}
			HashMap<String, Object> mapp = new HashMap<String, Object>();
			mapp.put("title", title);
			mapp.put("start", start);
			mapp.put("end", end);
			mapp.put("color", color);
			
			mainRList.add(mapp);
		}
		
		return mainRList;

	}
	
}
