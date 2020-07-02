package com.company.service;

import java.util.List;
import java.util.Map;

public interface AllbaManageService {
	public List<Map<String,String>> category(final String sitename);
	public List<Map<String,String>> detailcategory(final String sitename);
	public void registercategory(final String sitename, final String categoryname, final String depth, final String parent);
	public List<Map<String,String>> fieldlist(final String sitename);
	public void registerfield(final String sitename, final String fieldname, final String depth, final String fieldtype, final String parent);
}