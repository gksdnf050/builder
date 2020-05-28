package com.company.dao;

import java.util.List;

import com.company.dto.AllbaBoardDTO;

public interface AllbaBoardDAO {

	public List<AllbaBoardDTO> list(final String sitename, final String category, final String value);
	public void write(final String sitename, final AllbaBoardDTO dto);
	public AllbaBoardDTO view(final String sitename, final int boardid);
	public void modify(final String sitename, final AllbaBoardDTO dto);
	public void delete(final String sitename, final int boardid);
	public List<AllbaBoardDTO> search(final String sitename, final String keyword);
	public void regbookmark(String sitename, int boardid, String userid);
	public List<Integer> getbookmarkid(final String sitename, final String userid);
}
