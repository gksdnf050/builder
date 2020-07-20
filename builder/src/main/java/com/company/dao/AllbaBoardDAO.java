package com.company.dao;

import java.util.List;
import java.util.Map;


public interface AllbaBoardDAO {

	public List<Map<String,String>> list(final String sitename, final String category, final String value, final String c);
	//public void write(final String sitename, final AllbaBoardDTO dto);
	public void write(final String sitename, final List<String> list, final String[] str);
	public Map<String,String> view(final String sitename, final int boardid);
	public void modify(final String sitename, final List<String> list, final String[] str, final int boardid);
	public void delete(final String sitename, final int boardid);
	public  List<Map<String,String>> search(final String sitename, final String keyword);
	public void regbookmark(String sitename, int boardid, String userid);
	public List<Integer> getbookmarkid(final String sitename, final String userid);
	public List<Map<String,String>> fieldlist(final String sitename);
	public List<Map<String,String>> selectlist(final String sitename);
}