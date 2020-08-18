package com.spring.reservation.dao;

import java.util.HashMap;
import java.util.List;

import com.spring.reservation.vo.ReservationVo;

public interface ReservationDao {

	List<ReservationVo> roomList(HashMap<String, Object> map);

	void makeRes(HashMap<String, Object> map);

}
