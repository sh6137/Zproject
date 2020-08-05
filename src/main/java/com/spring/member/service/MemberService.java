package com.spring.member.service;

import java.util.HashMap;

import javax.servlet.http.HttpSession;

import com.spring.member.vo.MemberVo;

public interface MemberService {

	void setJoin(HashMap<String, Object> map);
	//회원 로그인 체크
	boolean loginCheck(MemberVo vo, HttpSession session);
	//회원 로그인 정보
	MemberVo viewMember(MemberVo vo);
	//회원 로그아웃
	void logout(HttpSession session);
}
