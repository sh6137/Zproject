package com.spring.reservation.dao.impl;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spring.reservation.dao.ReservationDao;
import com.spring.reservation.vo.ReservationVo;

@Repository("ReservationDao")
public class ReservationDaoImpl implements ReservationDao {
	@Autowired
	private SqlSession sqlSession ;
	
	
	@Override
	public List<ReservationVo> roomList(HashMap<String, Object> map) {
		
		sqlSession.selectList("RES.ResList", map);  //OUT CURSOR 쓸때는 먼저 해주어야댐
		List<ReservationVo> roomList = (List<ReservationVo>) map.get("result");
		
		return roomList;
	}


	@Override
	public void makeRes(HashMap<String, Object> map) {
	
		sqlSession.selectOne("RES.MakeRes", map);
		
	}

}
