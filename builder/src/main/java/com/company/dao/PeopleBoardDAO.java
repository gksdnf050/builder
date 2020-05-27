package com.company.dao;

import java.util.List;

import com.company.dto.PeopleBoardDTO;

public interface PeopleBoardDAO {

	public List<PeopleBoardDTO> list(final String sitename, final String category, final String value);
	public void write(final String sitename, final PeopleBoardDTO dto);
	public PeopleBoardDTO view(final String sitename, final int boardid);
	public void modify(final String sitename, final PeopleBoardDTO dto);
	public void delete(final String sitename, final int boardid);
	public List<PeopleBoardDTO> search(final String sitename, final String keyword);
	public void regbookmark(String sitename, int boardid, String userid);
	public List<Integer> getbookmarkid(final String sitename, final String userid);
}
