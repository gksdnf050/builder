package com.company.service;

import java.util.List;
import java.util.Map;

import org.springframework.web.bind.annotation.RequestParam;



public interface AllbaBoardService {

	public List<Map<String,String>> list(final String sitename, final String category, final String value, final String c, final int start);
	//public void write(final String sitename, final AllbaBoardDTO dto);
	public void write(final String sitename, final List<String> list, final String[] str);
	public Map<String,String> view(final String sitename, final int boardid);
	public void modify(final String sitename, final List<String> list, final String[] str, final int boardid);
	public void delete(final String sitename, final int boardid);
	public  List<Map<String,String>> search(final String sitename, final String keyword, final int stratValue);
	public void regbookmark(final String sitename, final int boardid, final String userid);
	public List<Integer> getbookmarkid(final String sitename, final String userid);
	public List<Map<String,String>> fieldlist(final String sitename);
	public List<Map<String,String>> selectlist(final String sitename);
	public int getTotalCount(final String sitename, final String category, final String value);
	public int getSearchCount(final String sitename, final String keyword);
}