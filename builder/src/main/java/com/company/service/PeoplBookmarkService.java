package com.company.service;

import java.util.List;

import com.company.dto.PeopleBoardDTO;
import com.company.dto.PeopleBookmarkDTO;


public interface PeoplBookmarkService {
	public List<PeopleBookmarkDTO> getbookmark(final String sitename, final String userid);
	public PeopleBoardDTO list(final String sitename, final int boardid);
	public void delete(final String sitename, final int boardid);
}
