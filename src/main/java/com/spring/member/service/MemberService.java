package com.spring.member.service;

import java.util.HashMap;

import com.spring.member.vo.MemberVo;

public interface MemberService {

	public MemberVo login(HashMap<String, Object> map);

	public void setJoin(HashMap<String, Object> map);

}
