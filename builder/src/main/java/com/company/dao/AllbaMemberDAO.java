package com.company.dao;

import com.company.dto.AllbaMemberDTO;

public interface AllbaMemberDAO {

	public void register(final String sitename, final AllbaMemberDTO dto);
	public AllbaMemberDTO login(final String sitename, final AllbaMemberDTO dto);
	public AllbaMemberDTO getModify(final String sitename, final int userno);
	public void postModify(final String sitename, final AllbaMemberDTO dto);
}
