package com.spring.pds.service.impl;

import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.spring.pds.dao.PdsDao;
import com.spring.pds.service.PdsService;
import com.spring.pds.vo.PdsVo;

@Service("pdsService")
public class PdsServiceImpl implements PdsService  {

	private static final String MultipartHttpServletRequest = null;
	@Autowired
	private  PdsDao  pdsDao; 
	
	@Override
	public List<PdsVo> getPdsList(HashMap<String, Object> map) {
		System.out.println( " PdsServiceImpl.getPdsList map:" + map );		
		List<PdsVo> pdsList  = pdsDao.getPdslist(map);
		return      pdsList;
		
	}

	@Override
	public void setWrite(HashMap<String, Object> map, 
			HttpServletRequest request) {
		
		// --- 파일 저장 (기존파일존재하면파일명 변경 ---------------
		CheckFileName checkFile = new CheckFileName(); 
		
		// 업로드된 파일이 저장될 경로 지정
		String  filePath = "c:\\upload\\"; 
		
		// 넘어온 정보중에 파일 추출
		MultipartHttpServletRequest multipartServletRequest
		  = (MultipartHttpServletRequest) request;
		
		// 여러파일처리
		Iterator<String> iterator =  multipartServletRequest.getFileNames();
		
		MultipartFile multipartFile = null;
		
		String fileName     = null;
		String orgFileName  = null;
		String fileExt      = null;
		String sFileName    = null;
		
		while( iterator.hasNext() ) { // 자료가 있는지를 판단
			multipartFile = multipartServletRequest.getFile( iterator.next() );
			
			if( !multipartFile.isEmpty() ) {
				fileName    = multipartFile.getOriginalFilename();
				// spring01.hwp
				orgFileName = fileName.substring(0, fileName.lastIndexOf("."));
				// spring01
				fileExt     = fileName.substring(fileName.lastIndexOf("."));
				// .hwp
				
				// fileName으로 저장된 폴더에세 중복된 파일이 있다면 처리한 후
				sFileName    = checkFile.getFileName(filePath, orgFileName, fileExt);
				
				File file = new  File(filePath + sFileName);
				
				try {
					multipartFile.transferTo(file); // 파일저장
				} catch (IllegalStateException e) {
					e.printStackTrace();
				} catch (IOException e) {
					e.printStackTrace();
				}  
			}  // if end
		} // while end		
		// --------------------------------------------------
				
		map.put("filename",  fileName);
		map.put("fileext",   fileExt);
		map.put("sfilename", sFileName);
		
		pdsDao.setWrite( map );
		
	} // setWrite end

	@Override
	public List<PdsVo> getView(HashMap<String, Object> map) {
		
		List<PdsVo> pdsList = pdsDao.getView(map);
		return pdsList;
		
	}

}
