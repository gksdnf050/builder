package com.company.service;

import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.company.dao.AllbaBookmarkDAO;
import com.company.dto.AllbaBookmarkDTO;

@Service
public class AllbaBookmarkServiceImpl implements AllbaBookmarkService {
	@Inject
	private AllbaBookmarkDAO dao;

	//즐겨찾기 정보 가져오기
	@Override
	public List<AllbaBookmarkDTO> getbookmark(String sitename, String userid) {
		// TODO Auto-generated method stub
		 return dao.getbookmark(sitename, userid);
	}

	// 즐겨찾기 게시물 가져오기
	@Override
	public Map<String,String> list(String sitename, int boardid) {
		// TODO Auto-generated method stub
		return dao.list(sitename, boardid);
	}

	//즐겨찾기 삭제
	@Override
	public void delete(String sitename, int boardid) {
		// TODO Auto-generated method stub
		dao.delete(sitename, boardid);
	}
}