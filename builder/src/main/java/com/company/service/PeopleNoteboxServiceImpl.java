package com.company.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.company.dao.PeopleNoteboxDAO;
import com.company.dto.PeopleNoteboxDTO;

@Service
public class PeopleNoteboxServiceImpl implements PeopleNoteboxService {

	@Inject
	PeopleNoteboxDAO dao;

	// 지원하기
	@Override
	public void apply(String sitename, PeopleNoteboxDTO dto) {
		// TODO Auto-generated method stub
		
		dao.apply(sitename, dto);
	}

	//받은쪽지함
	@Override
	public List<PeopleNoteboxDTO> receivenotebox(String sitename, String userid) {
		// TODO Auto-generated method stub
		return dao.receivenotebox(sitename, userid);
	}

	//쪽지 보기
	@Override
	public PeopleNoteboxDTO viewnote(String sitename, int noteboxid) {
		// TODO Auto-generated method stub
		return dao.viewnote(sitename, noteboxid);
	}
	
	//쪽지 삭제
	@Override
	public void deletenote(String sitename, int noteboxid) {
		// TODO Auto-generated method stub
		dao.deletenote(sitename, noteboxid);
	}
}
