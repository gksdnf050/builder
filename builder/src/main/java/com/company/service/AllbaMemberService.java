package com.company.service;

import com.company.dto.AllbaMemberDTO;

public interface AllbaMemberService {

	public void register(final String sitename, final AllbaMemberDTO dto);
	public AllbaMemberDTO login(final String sitename, final AllbaMemberDTO dto);
	public AllbaMemberDTO getModify(final String sitename, final int userno);
	public void postModify(final String sitename, final AllbaMemberDTO dto);
}
