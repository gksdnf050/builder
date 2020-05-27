package com.company.dao;

import java.util.List;

import com.company.dto.SiteDTO;

public interface SiteDAO {

	public List<SiteDTO> list(final String userid);
	public void create(final String userid, final String userpass, final String sitename, final String category, final String status);
	public void delete(final int siteid, final String sitename, final String status);
	public SiteDTO view(final int siteid);
	public void modify(final int siteid, final String sitename, final String category, final String status);
}
