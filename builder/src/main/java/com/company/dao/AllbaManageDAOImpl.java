package com.company.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class AllbaManageDAOImpl implements AllbaManageDAO {

	@Inject
	private SqlSession sql;
	private static String namespace = "com.company.mappers.allba.allbaManageMapper";

	// 상위카테고리 가져오기
	@Override
	public List<Map<String, String>> category(final String sitename) {
		// TODO Auto-generated method stub
		HashMap data = new HashMap();
		data.put("sitename", sitename);
		return sql.selectList(namespace + ".category", data);
	}

	// 하위카테고리 가져오기
	@Override
	public List<Map<String, String>> detailcategory(final String sitename) {
		// TODO Auto-generated method stub
		HashMap data = new HashMap();
		data.put("sitename", sitename);
		return sql.selectList(namespace + ".detailcategory", data);
	}

	// 카테고리 등록
	@Override
	public void registercategory(String sitename, String categoryname, String depth, String parent) {
		// TODO Auto-generated method stub
		HashMap data = new HashMap();
		data.put("sitename", sitename);
		data.put("categoryname", categoryname);
		data.put("depth", depth);
		data.put("parent", parent);

		sql.insert(namespace + ".registercategory", data);
	}

	// 필드 목록 가져오기
	@Override
	public List<Map<String, String>> fieldlist(String sitename) {
		// TODO Auto-generated method stub
		HashMap data = new HashMap();
		data.put("sitename", sitename);
		return sql.selectList(namespace + ".fieldlist", data);
	}

	// 필드 선택목록 가져오기
	@Override
	public List<Map<String, String>> selectlist(String sitename) {
		// TODO Auto-generated method stub
		HashMap data = new HashMap();
		data.put("sitename", sitename);
		return sql.selectList(namespace + ".selectlist", data);
	}

	// 필드 등록
	@Override
	public void registerfield(String sitename, String fieldname, String depth, String fieldtype, String parent) {
		// TODO Auto-generated method stub
		HashMap data = new HashMap();
		data.put("sitename", sitename);
		data.put("fieldname", fieldname);
		data.put("depth", depth);
		data.put("fieldtype", fieldtype);
		data.put("parent", parent);
		if (depth.equals("1")) {
			String add = "alter table " + sitename + "board add " + fieldname + " varchar(50);";
			data.put("add", add);
			sql.update(namespace + ".add", data);
			
		}

		sql.insert(namespace + ".registerfield", data);
	}

	//필드삭제
	@Override
	public void deletefield(String sitename, int fieldid, String fieldname) {
		// TODO Auto-generated method stub
		HashMap data = new HashMap();
		
		data.put("sitename", sitename);
		data.put("fieldid", fieldid);
		data.put("fieldname", fieldname);
		sql.delete(namespace + ".deletefield", data);
		sql.delete(namespace + ".deletefield2", data);
		String delete = "ALTER TABLE " + sitename+"board drop "+fieldname;
		data.put("delete", delete);
		sql.delete(namespace + ".deletefield3",data);
	}
	//카테고리 삭제
	@Override
	public void deletecategory(String sitename, int categoryid, String categoryname) {
		// TODO Auto-generated method stub
		
		HashMap data = new HashMap();
		
		data.put("sitename", sitename);
		data.put("categoryid", categoryid);
		data.put("categoryname", categoryname);
		
		sql.delete(namespace + ".deletecategory", data);
		sql.delete(namespace + ".deletecategory2", data);
	}

	@Override
	public String getsiteemail(String sitename) {
		// TODO Auto-generated method stub
		HashMap data = new HashMap();
		data.put("sitename", sitename);
		return sql.selectOne(namespace + ".getsiteemail", data);
	}
	//이벤트 등록
	@Override
	public void registerevent(String sitename, String file, String title) {
		// TODO Auto-generated method stub

		HashMap data = new HashMap();
		data.put("sitename", sitename);
		data.put("file", file);
		data.put("title", title);
		
		sql.insert(namespace + ".registerevent", data);
		
	}

}