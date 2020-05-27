package com.company.service;

import com.company.dto.PeopleMemberDTO;

public interface PeopleMemberService {

	public void register(final String sitename, final PeopleMemberDTO dto);
	public PeopleMemberDTO login(final String sitename, final PeopleMemberDTO dto);
	public PeopleMemberDTO getModify(final String sitename, final int userno);
	public void postModify(final String sitename, final PeopleMemberDTO dto);
}
