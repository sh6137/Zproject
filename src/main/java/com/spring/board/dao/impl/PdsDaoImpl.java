package com.spring.board.dao.impl;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spring.board.dao.PdsDao;
import com.spring.board.vo.PdsVo;

@Repository("pdsDao")
public class PdsDaoImpl implements PdsDao{
	
	@Autowired
	private SqlSession sqlSession;
	
	
	@Override
	public List<PdsVo>	getPdsList(HashMap<String,Object> map){
		
		sqlSession.selectList("PDS.PdsList", map);
		
		
		List<PdsVo> pdsList = (List<PdsVo>) map.get("result");
		
		//List<PdsVo> pdsList = (List<PdsVo>) map.get("result");
		//System.out.println(pdsList);
		return pdsList;	
		
	}


	@Override
	public void setWrite(HashMap<String, Object> map) {
         System.out.println("insert : " + map);
		sqlSession.insert("PDS.PdsWrite", map);
		
	}


	@Override
	public List<PdsVo> getView(HashMap<String, Object> map) {
		sqlSession.selectList("PDS.PdsView", map);
		List<PdsVo> pdsList	 = (List<PdsVo>) map.get("result");
		return pdsList;
	}


	@Override
	public void delete(HashMap<String, Object> map) {
		System.out.println("삭제 확인 " + map);
		sqlSession.delete("PDS.PdsDelete" , map);
		
	}


	@Override
	public void updatePds(HashMap<String, Object> map) {
		System.out.println("업데이트 확인: " + map);
		sqlSession.update("PDS.PdsUpdate", map);
	}





	
}
