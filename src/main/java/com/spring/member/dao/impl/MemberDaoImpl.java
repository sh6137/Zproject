package com.spring.member.dao.impl;

import java.util.HashMap;
import java.util.List;

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

	@Override
	public void setJoin(HashMap<String, Object> map) {
		sqlSession.insert("Mem.MemInsert", map);
	}

	@Override
	public MemberVo getFindId(HashMap<String, Object> map) {
		MemberVo memberVo= sqlSession.selectOne("Mem.FindId",map);
		System.out.println(memberVo);
		return memberVo;
	}

	@Override
	public MemberVo getFindPw(HashMap<String, Object> map) {
		MemberVo memberVo= sqlSession.selectOne("Mem.FindPw",map);
		System.out.println("Memberdaoimpl : "+memberVo);
		return memberVo;
	}

	@Override
	public void setChangePw(HashMap<String, Object> map) {
		sqlSession.update("Mem.ChangePw", map);
		System.out.println("changepwdaoimpl : "+sqlSession.update("Mem.ChangePw", map));
	}

	@Override
	public String checkId(HashMap<String, Object> map) {
		sqlSession.selectOne("Mem.CheckId", map);
		System.out.println(map);
		List<MemberVo> vo2 = (List<MemberVo>) map.get("result");
		System.out.println(vo2);
		String vo = vo2.get(0).getCnt();
		System.out.println(vo);
		return vo;
	}

}
