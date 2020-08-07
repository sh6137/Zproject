package com.spring.member.dao.impl;

import java.util.HashMap;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spring.member.dao.MemberDao;
import com.spring.member.vo.MemberVo;

@Repository("memberDao")
public class MemberDaoImpl implements MemberDao {

	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public MemberVo login(HashMap<String, Object> map) {
		
		MemberVo memberVo= sqlSession.selectOne("Mem.Login",map);
		
		return memberVo;
	}

}
