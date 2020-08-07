package com.spring.member.controller;

import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

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
}
