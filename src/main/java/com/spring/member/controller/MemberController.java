package com.spring.member.controller;

import java.util.HashMap;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.spring.member.service.MemberService;
import com.spring.member.vo.MemberVo;


@Controller
public class MemberController {
	
	@Autowired
	MemberService memberService;
	
	@RequestMapping("/")
	public String home() {
		
		return "home";
	}
	
	@RequestMapping(value="/login", method=RequestMethod.GET)
	public String loginform() {
		return "login/loginForm";
	}
	
	//로그인
	@RequestMapping(value="/loginProcess", method=RequestMethod.POST)
	public String loginProcess(
			HttpSession session,
			@RequestParam HashMap<String, Object>map) {
				
		String	returnURL ="";
		if(session.getAttribute("login")!= null) {
			session.removeAttribute("login");
		}
		MemberVo vo = memberService.login(map);
		if(vo !=null) {
			session.setAttribute("login", vo);
			returnURL ="redirect:/";
			
		}else {
			returnURL = "redirect:/login";
		}
		return returnURL;
		
	}
	//로그아웃
	@RequestMapping("/logout")
	public String logout(HttpSession session) {
		session.removeAttribute("login");
		session.invalidate();
		//return "redirect:/PDS/List?menu_id=MENU01";
		//return "/PDS/List?menu_id=MENU01&nowpage=1&pagecount=2&pagegrpnum=1";
		return "redirect:/";
	}
	
	@RequestMapping("/JoinForm") 
	public String joinForm() { 
		return "join/joinForm"; 
	}
	
	@RequestMapping("/Join/Join")
	public ModelAndView join(@RequestParam HashMap<String, Object> map) {
		System.out.println("join모델엔뷰"+map);
		memberService.setJoin(map);
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("login/loginForm");
		return mv;
	}
	@RequestMapping("/FindID")
	public ModelAndView findId() {
		System.out.println("find모델엔뷰");
		ModelAndView mv = new ModelAndView();
		mv.setViewName("join/findIdForm");
		return mv;
		
	}
}
