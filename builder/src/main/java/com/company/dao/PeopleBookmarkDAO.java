package com.company.dao;

import java.util.List;

import com.company.dto.PeopleBoardDTO;
import com.company.dto.PeopleBookmarkDTO;

public interface PeopleBookmarkDAO {
	public List<PeopleBookmarkDTO> getbookmark(final String sitename, final String userid);
	public PeopleBoardDTO list(final String sitename, final int boardid);
	public void delete(final String sitename, final int boardid);
}
