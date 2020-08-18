package com.spring.room.service.impl;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.room.dao.RoomDao;
import com.spring.room.service.RoomService;
import com.spring.room.vo.RoomVo;

@Service("roomService")
public class RoomServiceImpl implements RoomService {

	@Autowired
	private RoomDao roomDao;
	
	@Override
	public List<RoomVo> getRoom(HashMap<String, Object> map) {
		List<RoomVo> room = roomDao.getRoom(map);
		return room;
	}

	@Override
	public List<RoomVo> getRoomList(HashMap<String, Object> map) {
		List<RoomVo> roomList = roomDao.getRoomList(map);
		return roomList;
	}

	@Override
	public List<RoomVo> getRoomDetail(HashMap<String, Object> deMap) {
		List<RoomVo> detail = roomDao.getRoomDetail(deMap);
		return detail;
	}

}
