package com.spring.member.dao.impl;

import java.util.HashMap;

import javax.servlet.http.HttpSession;

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
	public void setJoin(HashMap<String, Object> map) {
		sqlSession.insert("Mem.MemInsert", map);
	}

	@Override
	public boolean loginCheck(MemberVo vo) {
		String name = sqlSession.selectOne("Mem.loginCheck", vo);
		System.out.println("로그인체크다오부분" + name);
	    return (name == null) ? false : true;
	}

	@Override
	public MemberVo viewMember(MemberVo vo) {
		return sqlSession.selectOne("Mem.viewMember",vo);
	}

	@Override
	public void logout(HttpSession session) {
		// TODO Auto-generated method stub
		
	}

}
