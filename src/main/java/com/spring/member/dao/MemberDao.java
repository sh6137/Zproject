package com.spring.member.dao;

import java.util.HashMap;

import com.spring.member.vo.MemberVo;

public interface MemberDao {

	MemberVo login(HashMap<String, Object> map);

	void setJoin(HashMap<String, Object> map);

	MemberVo getFindId(HashMap<String, Object> map);

	MemberVo getFindPw(HashMap<String, Object> map);

}
