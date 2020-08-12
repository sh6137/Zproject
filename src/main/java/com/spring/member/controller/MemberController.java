package com.spring.member.controller;

import java.util.HashMap;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
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
	
	//회원가입 구역
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
	//회원가입 구역 끝
	
	//아이디 비밀번호 찾는 구역
	@RequestMapping("/FindIDForm")
	public ModelAndView findIdForm() {
		System.out.println("findform모델엔뷰");
		ModelAndView mv = new ModelAndView();
		mv.setViewName("join/findIdForm");
		return mv;	
	}
	@RequestMapping("/FindID")
	public ModelAndView findId(@RequestParam HashMap<String, Object> map) {
		System.out.println("find모델엔뷰" + map);
		
		MemberVo vo = memberService.getFindId(map);
		System.out.println("findid모델뷰에 " + vo);
		ModelAndView mv = new ModelAndView();
		mv.addObject("find",vo);
		mv.setViewName("join/findId");
		//memberService.setFindId(map);
		return mv;
	}
	
	@RequestMapping("/FindPWFrom")
	public ModelAndView findPwFrom() {
		System.out.println("findpwform모델엔뷰");
		ModelAndView mv = new ModelAndView();
		mv.setViewName("join/findPWForm");
		return mv;
	}
	@RequestMapping("/FindPW")
	@ResponseBody
	public ModelAndView findPw(@RequestParam HashMap<String, Object> map, HttpServletResponse response) {
		System.out.println("findPw모델엔뷰" + map);
		String mapName = (String) map.get("m_name");	
		String mapId = (String) map.get("m_id");	
		String mapEmail = (String) map.get("email");	
		String mapTel = (String) map.get("tel");	

		MemberVo vo = memberService.getFindPw(map);
		String voName = vo.getM_name();
		String voId = vo.getM_id();
		String voEmail = vo.getEmail();
		String voTel = vo.getTel();
		
//		if(voName == null || voId == null || voEmail == null || voTel == null) {
//			
//		}
//
		ModelAndView mv = new ModelAndView();
		
		if(mapName.equals(voName) && mapId.equals(voId) && 
				mapEmail.equals(voEmail) && mapTel.equals(voTel)) {
			mv.addObject("findpw",vo);
			mv.setViewName("join/findPw");
		}else
		{
			mv.setViewName("join/findPWForm");
		}
//
//		System.out.println("findPw모델뷰에 " + vo);
		

		//memberService.setFindId(map);
		return mv;
	}
}
