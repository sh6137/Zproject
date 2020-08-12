package com.spring.info.controller;

import java.util.HashMap;
import java.util.List;

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
import com.spring.menu.vo.MenuVO;
import com.spring.res.service.ResService;
import com.spring.res.vo.ResVO;

@Controller
public class InfoController {

   @Autowired
   InfoService infoService;
   @Autowired
   MenuService menuService;
   @Autowired
   ResService resService;
   
   
   @RequestMapping("/INFO/SerInfo")
   public ModelAndView info(@RequestParam HashMap<String, Object> map) {
      
      InfoVO infoVO = infoService.serInfo(map);
      
      System.out.println("/INFO/SerInfo의 map : " + map);
      
      ModelAndView mv = new ModelAndView();
      mv.setViewName("Info/serInfo");
      mv.addObject("infoVO", infoVO);
      mv.addObject("map", map);
      
      return mv;
      
   }
   
   @RequestMapping("/INFO/ConInfo")
   public ModelAndView conInfo(@RequestParam HashMap<String, Object> map) {
	   
	   InfoVO infoVO = infoService.conInfo(map);
	   System.out.println("/INFO/ConInfo의 map : " + map);
	   
	   String returnURL = "";
	   
	   if (infoVO != null) {
		   returnURL = "Info/updateInfo";
	   } else {		   
		   returnURL = "redirect:/INFO/SerInfo?m_id=" + map.get("m_id") + "&lvl=1";
	   }
	   
	   ModelAndView mv = new ModelAndView();
	   mv.setViewName(returnURL);
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
   public ModelAndView deleteInfo(@RequestParam HashMap<String, Object> map) {
	   System.out.println("/INFO/DropInfo의 map : " + map);
	   infoService.deleteInfo(map);
	   
	   ModelAndView mv = new ModelAndView();
	   mv.setViewName("redirect:/");
	   
	   return mv;
	   
   }
   
   @RequestMapping("/RES/ResInfo")
   public ModelAndView resInfo(@RequestParam HashMap<String, Object> map) {
	   System.out.println("/RES/ResInfo의 map : " + map);
	   List<ResVO> recresList = resService.recresInfo(map);
	   System.out.println("/RES/ResInfo의 recresList : " + recresList);
	   
	   ModelAndView mv = new ModelAndView();
	   mv.setViewName("Info/resInfo");
	   mv.addObject("map", map);
	   mv.addObject("recresList", recresList);
	   
	   return mv;
	   
   }
   
   @RequestMapping("/RES/CanRE")
   public ModelAndView canRE(@RequestParam HashMap<String, Object> map) {
	   System.out.println("/RES/CanRE의 map : " + map);
	   resService.resCc(map);
	   
	   ModelAndView mv = new ModelAndView();
	   mv.setViewName("redirect:/RES/ResInfo?m_id=" + map.get("m_id"));
	   mv.addObject("map", map);
	   
	   return mv;
	   
   }
   
   @RequestMapping("/RES/ResListForm")
   public ModelAndView resListForm(@RequestParam HashMap<String, Object> map) {
	   System.out.println("/RES/ResListForm의 map : " + map);
	   ModelAndView mv = new ModelAndView();
	   
	   mv.setViewName("Info/resListt");
	   mv.addObject("map", map);
	   
	   
	   return mv;
	   
   }
   
   @RequestMapping(value="/RES/ResList", method=RequestMethod.GET)
   @ResponseBody
   public List<ResVO> resList(@RequestParam HashMap<String, Object> map) {
	   System.out.println("/RES/ResListForm의 map : " + map);
	   ModelAndView mv = new ModelAndView();
	   
	   List<ResVO> resList = resService.resList(map);
	   //mv.addObject("resList", resList);
	   //mv.setViewName("Info/resListt");
	   //mv.addObject("map", map);
	      
	   return resList;
	   
   }
   
}