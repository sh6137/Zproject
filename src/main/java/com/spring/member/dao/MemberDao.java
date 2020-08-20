package com.spring.member.dao;

import java.util.HashMap;
import java.util.List;

import com.spring.member.vo.MemberVo;

public interface MemberDao {

	MemberVo login(HashMap<String, Object> map);

	void setJoin(HashMap<String, Object> map);

	MemberVo getFindId(HashMap<String, Object> map);

	MemberVo getFindPw(HashMap<String, Object> map);

	void setChangePw(HashMap<String, Object> map);

	String checkId(HashMap<String, Object> map);

}
