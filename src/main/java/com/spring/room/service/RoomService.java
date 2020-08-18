package com.spring.room.service;

import java.util.HashMap;
import java.util.List;

import com.spring.room.vo.RoomVo;

public interface RoomService {

	List<RoomVo> getRoom(HashMap<String, Object> map);

	List<RoomVo> getRoomList(HashMap<String, Object> map);

	List<RoomVo> getRoomDetail(HashMap<String, Object> deMap);

}
