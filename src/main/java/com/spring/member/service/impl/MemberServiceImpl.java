package com.spring.member.service.impl;

import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.member.dao.MemberDao;
import com.spring.member.service.MemberService;
import com.spring.member.vo.MemberVo;


@Service("memberService")
public class MemberServiceImpl implements MemberService {
	
	@Autowired
	private MemberDao memberDao;

	@Override
	public MemberVo login(HashMap<String, Object> map) {
		MemberVo memberVo = memberDao.login(map);
		
		return memberVo;
	}

	@Override
	public void setJoin(HashMap<String, Object> map) {
		
			memberDao.setJoin(map);
		
	}

	@Override
	public MemberVo getFindId(HashMap<String, Object> map) {
		MemberVo memberVo = memberDao.getFindId(map);
		
		return memberVo;
	}

	@Override
	public MemberVo getFindPw(HashMap<String, Object> map) {
		MemberVo memberVo = memberDao.getFindPw(map);
		
		return memberVo;
	}

}
