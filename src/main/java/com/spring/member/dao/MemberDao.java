package com.spring.member.dao;

import java.util.HashMap;

import com.spring.member.vo.MemberVo;

public interface MemberDao {

	MemberVo login(HashMap<String, Object> map);

}
