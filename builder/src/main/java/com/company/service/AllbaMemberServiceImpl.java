package com.company.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.company.dao.AllbaMemberDAO;
import com.company.dto.AllbaMemberDTO;


@Service
public class AllbaMemberServiceImpl implements AllbaMemberService {
	@Inject
	private AllbaMemberDAO dao;
	
	//회원가입
	@Override
	public void register(final String sitename, final AllbaMemberDTO dto) {
		// TODO Auto-generated method stub
		dao.register(sitename ,dto);
	}
	
	//로그인
	@Override
	public AllbaMemberDTO login(final String sitename, final AllbaMemberDTO dto) {
		// TODO Auto-generated method stub
		return dao.login(sitename, dto);
	}
	//회원정보 수정get
	@Override
	public AllbaMemberDTO getModify(String sitename, int userno) {
		// TODO Auto-generated method stub
		return dao.getModify(sitename, userno);
	}
	//회원정보수정 post
	@Override
	public void postModify(String sitename, AllbaMemberDTO dto) {
		// TODO Auto-generated method stub
		 dao.postModify(sitename, dto);
	}

}
