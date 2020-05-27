package com.company.service;

import com.company.dto.MemberDTO;


public interface MemberService {

	public void register(final MemberDTO dto);
	public MemberDTO login(final MemberDTO dto);
	public MemberDTO getModify(final int userno);
	public void postModify(final MemberDTO dto);
}
