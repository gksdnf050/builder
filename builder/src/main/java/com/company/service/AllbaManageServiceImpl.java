package com.company.service;

import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.company.dao.AllbaManageDAO;
import com.company.dto.EventDTO;

@Service
public class AllbaManageServiceImpl implements AllbaManageService {

	@Inject
	AllbaManageDAO dao;

	// 상위카테고리 가져오기
	@Override
	public List<Map<String, String>> category(String sitename) {
		// TODO Auto-generated method stub

		return dao.category(sitename);
	}

	// 하위카테고리 가져오기
	@Override
	public List<Map<String, String>> detailcategory(String sitename) {
		// TODO Auto-generated method stub
		return dao.detailcategory(sitename);
	}

	// 카테고리 등록
	@Override
	public void registercategory(String sitename, String categoryname, String depth, String parent) {
		// TODO Auto-generated method stub
		dao.registercategory(sitename, categoryname, depth, parent);
	}

	// 필드 목록 가져오기
	@Override
	public List<Map<String, String>> fieldlist(String sitename) {
		// TODO Auto-generated method stub
		return dao.fieldlist(sitename);
	}

	// 필드 등록
	@Override
	public void registerfield(String sitename, String fieldname, String depth, String fieldtype, String parent) {
		// TODO Auto-generated method stub
		dao.registerfield(sitename, fieldname, depth, fieldtype, parent);
	}

	// 필드 선택목록 가져오기
	@Override
	public List<Map<String, String>> selectlist(String sitename) {
		// TODO Auto-generated method stub
		return dao.selectlist(sitename);
	}

	// 필드 삭제
	@Override
	public void deletefield(String sitename, int fieldid, String fieldname) {
		// TODO Auto-generated method stub
		dao.deletefield(sitename, fieldid, fieldname);
	}

	// 카테고리 삭제
	@Override
	public void deletecategory(String sitename, int categoryid, String categoryname) {
		// TODO Auto-generated method stub
		dao.deletecategory(sitename, categoryid, categoryname);
	}

	@Override
	public String getsiteemail(String sitename) {
		// TODO Auto-generated method stub
		return dao.getsiteemail(sitename);
	}

	// 이벤트 틍록
	@Override
	public void registerevent(String sitename, String file, String title) {
		// TODO Auto-generated method stub
		dao.registerevent(sitename, file, title);
	}

	@Override
	public void change(String sitename, List<String> vals, List<Map<String, String>> selectlist) {
		// TODO Auto-generated method stub
		dao.change(sitename, vals, selectlist);
	}

	// 이벤트 목록
	@Override
	public List<EventDTO> listevent(String sitename) {
		// TODO Auto-generated method stub
		return dao.listevent(sitename);
	}

	// 이벤트 조회
	@Override
	public EventDTO viewevent(String sitename, int eventid) {
		// TODO Auto-generated method stub
		return dao.viewevent(sitename, eventid);
	}

	// 이벤트삭제
	@Override
	public void eventdelete(String sitename, int eventid) {
		// TODO Auto-generated method stub
		dao.eventdelete(sitename, eventid);
	}
	//이벤트 수정 post
	@Override
	public void posteventmodify(String sitename, EventDTO dto) {
		// TODO Auto-generated method stub
		dao.posteventmodify(sitename, dto);
	}

	@Override
	public String getlogo(String sitename) {
		// TODO Auto-generated method stub
		return dao.getlogo(sitename);
	}
	//배너등록
	@Override
	public void registerbanner(String sitename, String banner, String title, String link) {
		// TODO Auto-generated method stub
		dao.registerbanner(sitename, banner, title, link);
	}
	//배너 리스트
	@Override
	public List listbanner(String sitename) {
		// TODO Auto-generated method stub
		return dao.listbanner(sitename);
	}

	@Override
	public void bannerdelete(String sitename, int bannerid) {
		// TODO Auto-generated method stub
		dao.bannerdelete(sitename, bannerid);
	}

}