package com.spring.room.dao.impl;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spring.room.dao.RoomDao;
import com.spring.room.vo.RoomVo;

@Repository("roomDao")
public class RoomDaoImpl implements RoomDao {

	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public List<RoomVo> getRoom(HashMap<String, Object> map) {
		sqlSession.selectList("Room.GetRoom", map);
		List<RoomVo> room = (List<RoomVo>) map.get("result");
		return room;
	}

	@Override
	public List<RoomVo> getRoomList(HashMap<String, Object> map) {
		sqlSession.selectList("Room.GetRoomList", map);
		List<RoomVo> roomList = (List<RoomVo>) map.get("result");
		return roomList;
	}

	@Override
	public List<RoomVo> getRoomDetail(HashMap<String, Object> deMap) {
		sqlSession.selectList("Room.GetRoomDetail", deMap);
		List<RoomVo> detail = (List<RoomVo>) deMap.get("result");
		return detail;
	}

}
