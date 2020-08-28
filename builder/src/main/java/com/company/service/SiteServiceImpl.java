package com.company.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.company.dao.SiteDAO;
import com.company.dto.SiteDTO;

@Service
public class SiteServiceImpl implements SiteService {

	@Inject
	private SiteDAO dao;
	//사이트 목록
	@Override
	public List<SiteDTO> list(final String userid) {
		// TODO Auto-generated method stub
		return dao.list(userid);
	}
	//사이트 생성
	@Override
	public void create(final String userid, final String userpass, final String sitename, final String category, final String status, final String topcategory, final String siteemail, final String logo) {
		// TODO Auto-generated method stub
		
		dao.create(userid, userpass, sitename, category, status, topcategory, siteemail, logo);
	}
	//사이트 삭제
	@Override
	public void delete(final int siteid, final String sitename, final String status) {
		// TODO Auto-generated method stub
		dao.delete(siteid, sitename, status);
	}
	//사이트 수정get
	@Override
	public SiteDTO view(int siteid) {
		// TODO Auto-generated method stub
		
		return dao.view(siteid);
		
	}
	//사이트 수정post
	@Override
	public void modify(final String userid, final String userpass, final String sitename, final String category, final String status, final String topcategory, final String siteemail, final String logo, final int siteid) {
		// TODO Auto-generated method stub
		dao.modify(userid, userpass, sitename, category, status, topcategory, siteemail, logo, siteid);
	}

}
