package com.spring.member.service;

import java.util.HashMap;

import com.spring.member.vo.MemberVo;

public interface MemberService {

	public MemberVo login(HashMap<String, Object> map);

	public void setJoin(HashMap<String, Object> map);

	public MemberVo getFindId(HashMap<String, Object> map);

	public MemberVo getFindPw(HashMap<String, Object> map);

	public void setChangePw(HashMap<String, Object> map);

}
