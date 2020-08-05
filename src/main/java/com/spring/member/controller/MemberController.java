package com.spring.member.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.spring.member.service.MemberService;
import com.spring.member.vo.MemberVo;

@Controller
public class MemberController {
	
	@Autowired
	MemberService memberService;
	
	@RequestMapping("/")
	public String home() {
		return "login";
	}
	
	@RequestMapping("Member/loginCheck")
	public ModelAndView loginCheck(@ModelAttribute MemberVo vo, 
				HttpSession session) {
		boolean result = memberService.loginCheck(vo, session);
		System.out.println("컨트롤러부분 로그인체크" + result);
		ModelAndView mv = new ModelAndView();
		if (result == true) { // 로그인 성공
            // main.jsp로 이동
			mv.addObject("msg", "success");
			mv.setViewName("main/home");
        } else {    // 로그인 실패
            // login.jsp로 이동
        	mv.addObject("msg", "failure");
        	mv.setViewName("login");
        }
        return mv;
	}
	 // 03. 로그아웃 처리
    @RequestMapping("logout")
    public ModelAndView logout(HttpSession session){
        memberService.logout(session);
        ModelAndView mv = new ModelAndView();
        mv.addObject("msg", "logout");
        mv.setViewName("login");
        return mv;
    }
	
}
