package com.company.service;

import java.util.List;
import java.util.Map;

import com.company.dto.AllbaBookmarkDTO;


public interface AllbaBookmarkService {
	public List<AllbaBookmarkDTO> getbookmark(final String sitename, final String userid);
	public Map<String,String> list(final String sitename, final int boardid);
	public void delete(final String sitename, final int boardid);
}