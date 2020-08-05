package com.spring.member.dao;

import java.util.HashMap;

import javax.servlet.http.HttpSession;

import com.spring.member.vo.MemberVo;

public interface MemberDao {

	void setJoin(HashMap<String, Object> map);
	//회원 로그인 체크
	boolean loginCheck(MemberVo vo);
	//회원 로그인 정보
	MemberVo viewMember(MemberVo vo);
	
	// 02. 회원 로그아웃
    public void logout(HttpSession session);
}
