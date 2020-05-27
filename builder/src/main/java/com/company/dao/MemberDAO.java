package com.company.dao;

import com.company.dto.MemberDTO;

public interface MemberDAO {
	public void register(final MemberDTO dto);
	public MemberDTO login(final MemberDTO dto);
	public MemberDTO getModify(final int userno);
	public void postModify(final MemberDTO dto);
}
