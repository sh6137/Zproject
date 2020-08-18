package com.spring.reservation.service.impl;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.reservation.dao.ReservationDao;
import com.spring.reservation.service.ReservationService;
import com.spring.reservation.vo.ReservationVo;

@Service("reservationService")
public class ReservationServiceImpl implements ReservationService {
	@Autowired
	ReservationDao reservationDao;
	
	
	@Override
	public List<ReservationVo> roomList(HashMap<String, Object> map) {
		List<ReservationVo> roomList = reservationDao.roomList(map);
		System.out.println( "roomlist : " + roomList);
		System.out.println( "map : " + map);
		return roomList;
	}


	@Override
	public void makeRes(HashMap<String, Object> map) {
		reservationDao.makeRes(map);
		
	}

}
