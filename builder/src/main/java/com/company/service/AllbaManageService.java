package com.company.service;

import java.util.List;
import java.util.Map;


import com.company.dto.EventDTO;

public interface AllbaManageService {
	public List<Map<String, String>> category(final String sitename);

	public List<Map<String, String>> detailcategory(final String sitename);

	public void registercategory(final String sitename, final String categoryname, final String depth,
			final String parent);

	public List<Map<String, String>> fieldlist(final String sitename);

	public List<Map<String, String>> selectlist(final String sitename);

	public void registerfield(final String sitename, final String fieldname, final String depth, final String fieldtype,
			final String parent);

	public void deletefield(final String sitename, final int fieldid, final String fieldname);
	public void deletecategory(final String sitename, final int categoryid, final String categoryname);
	public String getsiteemail(final String sitename);
	public void registerevent(final String sitename, final String file, final String title);
	public void change(final String sitename, final List<String> vals, final List<Map<String, String>> selectlist);
	public List<EventDTO> listevent(final String sitename);
	public EventDTO viewevent(final String sitename, final int eventid);
	public void eventdelete(final String sitename, final int eventid);
	public void posteventmodify(final String sitename, final EventDTO dto);
}