package com.company.service;

import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.company.dao.AllbaManageDAO;

@Service
public class AllbaManageServiceImpl implements AllbaManageService {

	@Inject
	AllbaManageDAO dao;
	//상위카테고리 가져오기
	@Override
	public List<Map<String, String>> category(String sitename) {
		// TODO Auto-generated method stub
		
		return dao.category(sitename);
	}
	//하위카테고리 가져오기
	@Override
	public List<Map<String, String>> detailcategory(String sitename) {
		// TODO Auto-generated method stub
		return dao.detailcategory(sitename);
	}
	//카테고리 등록
	@Override
	public void registercategory(String sitename ,String categoryname, String depth, String parent) {
		// TODO Auto-generated method stub
		dao.registercategory(sitename ,categoryname, depth, parent);
	}
	//필드 목록 가져오기
	@Override
	public List<Map<String, String>> fieldlist(String sitename) {
		// TODO Auto-generated method stub
		return dao.fieldlist(sitename);
	}
	//필드 등록
	@Override
	public void registerfield(String sitename, String fieldname, String depth, String fieldtype, String parent) {
		// TODO Auto-generated method stub
		dao.registerfield(sitename ,fieldname, depth, fieldtype, parent);
	}

}
