package com.spring.member.service.impl;

import java.util.HashMap;

import javax.servlet.http.HttpSession;

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
	public void setJoin(HashMap<String, Object> map) {
		memberDao.setJoin(map);
	}

	@Override
	public boolean loginCheck(MemberVo vo, HttpSession session) {
		boolean result = memberDao.loginCheck(vo);
        System.out.println("맴버서비스임플리먼트부분"+result);
        System.out.println(vo.getM_id());
        System.out.println(vo.getM_pw());
		if (result) { // true일 경우 세션에 등록
        	MemberVo vo2= viewMember(vo);
            // 세션 변수 등록
            session.setAttribute("m_id", vo2.getM_id());
            session.setAttribute("m_name", vo2.getM_name());
            return result;
        } 
        return result;
	}

	@Override
	public MemberVo viewMember(MemberVo vo) {
		return memberDao.viewMember(vo);
	}

	@Override
	public void logout(HttpSession session) {
		 // 세션 정보를 초기화 시킴
        session.invalidate();
	}

}
