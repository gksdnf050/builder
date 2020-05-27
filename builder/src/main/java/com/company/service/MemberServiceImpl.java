package com.company.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.company.dao.MemberDAO;
import com.company.dto.MemberDTO;

@Service
public class MemberServiceImpl implements MemberService {
	@Inject
	private MemberDAO dao;
	
	//회원가입
	@Override
	public void register(final MemberDTO dto) {
		// TODO Auto-generated method stub
		dao.register(dto);
	}
	
	//로그인
	@Override
	public MemberDTO login(final MemberDTO dto) {
		// TODO Auto-generated method stub
		return dao.login(dto);
	}
	//회원정보 수정 get
	@Override
	public MemberDTO getModify(int userno) {
		// TODO Auto-generated method stub
		return dao.getModify(userno);
	}
	//회원정보 수정 post
	@Override
	public void postModify(MemberDTO dto) {
		// TODO Auto-generated method stub
		dao.postModify(dto);
	}

}
