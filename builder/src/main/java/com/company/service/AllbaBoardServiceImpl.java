package com.company.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.company.dao.AllbaBoardDAO;
import com.company.dto.AllbaBoardDTO;

@Service
public class AllbaBoardServiceImpl implements AllbaBoardService {
	
	@Inject
	private AllbaBoardDAO dao;
	//게시물 목록
	@Override
	public List<AllbaBoardDTO> list(final String sitename, final String category, final String value) {
		// TODO Auto-generated method stub
		
		return dao.list(sitename, category, value);
	}
	//게시물 작성
	@Override
	public void write(final String sitename, final AllbaBoardDTO dto) {
		// TODO Auto-generated method stub
		dao.write(sitename, dto);
	}
	//게시물 조회 /수정 get
	@Override
	public AllbaBoardDTO view(final String sitename, final int boardid) {
		// TODO Auto-generated method stub
		return dao.view(sitename, boardid);
	}
	//게시물 수정 post
	@Override
	public void modify(final String sitename, final AllbaBoardDTO dto) {
		// TODO Auto-generated method stub
		dao.modify(sitename, dto);
	}
	//게시물 삭제
	@Override
	public void delete(final String sitename, final int boardid) {
		// TODO Auto-generated method stub
		dao.delete(sitename, boardid);
	}
	//게시물 검색
	@Override
	public List<AllbaBoardDTO> search(String sitename, String keyword) {
		// TODO Auto-generated method stub
		return dao.search(sitename, keyword);
	}
	//게시물 즐겨찾기 등록
	@Override
	public void regbookmark(String sitename, int boardid, String userid) {
		// TODO Auto-generated method stub
		dao.regbookmark(sitename, boardid, userid);
	}
	
	// 즐겨찾기 등록된 게시물id 가져오기
	@Override
	public List<Integer> getbookmarkid(String sitename, String userid) {
		// TODO Auto-generated method stub
		return dao.getbookmarkid(sitename, userid);
	}
	

}
