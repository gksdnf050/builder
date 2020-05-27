package com.company.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.company.dao.PeopleMemberDAO;
import com.company.dto.PeopleMemberDTO;


@Service
public class PeopleMemberServiceImpl implements PeopleMemberService {
	@Inject
	private PeopleMemberDAO dao;
	
	//회원가입
	@Override
	public void register(final String sitename, final PeopleMemberDTO dto) {
		// TODO Auto-generated method stub
		dao.register(sitename ,dto);
	}
	
	//로그인
	@Override
	public PeopleMemberDTO login(final String sitename, final PeopleMemberDTO dto) {
		// TODO Auto-generated method stub
		return dao.login(sitename, dto);
	}
	//회원정보 수정get
	@Override
	public PeopleMemberDTO getModify(String sitename, int userno) {
		// TODO Auto-generated method stub
		return dao.getModify(sitename, userno);
	}
	//회원정보수정 post
	@Override
	public void postModify(String sitename, PeopleMemberDTO dto) {
		// TODO Auto-generated method stub
		 dao.postModify(sitename, dto);
	}

}
