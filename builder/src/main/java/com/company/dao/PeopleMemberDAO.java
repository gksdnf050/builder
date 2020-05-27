package com.company.dao;

import com.company.dto.PeopleMemberDTO;

public interface PeopleMemberDAO {

	public void register(final String sitename, final PeopleMemberDTO dto);
	public PeopleMemberDTO login(final String sitename, final PeopleMemberDTO dto);
	public PeopleMemberDTO getModify(final String sitename, final int userno);
	public void postModify(final String sitename, final PeopleMemberDTO dto);
}
