package com.company.dao;

import java.util.HashMap;
import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.company.dto.AllbaBoardDTO;
import com.company.dto.AllbaBookmarkDTO;

@Repository
public class AllbaBookmarkDAOImpl implements AllbaBookmarkDAO {

	@Inject
	private SqlSession sql;
	private static String namespace = "com.company.mappers.allba.allbaBookmarkMapper";

	//즐겨찾기 정보 가져오기
	@Override
	public List<AllbaBookmarkDTO> getbookmark(String sitename, String userid) {
		// TODO Auto-generated method stub
		
		HashMap data = new HashMap();
		data.put("sitename", sitename);
		data.put("userid", userid);
		
		return sql.selectList(namespace + ".getboardid",data);
	}

	//즐겨찾기 게시물 가져오기
	@Override
	public AllbaBoardDTO list(String sitename, int boardid) {
		// TODO Auto-generated method stub
		HashMap data = new HashMap();
		data.put("sitename", sitename);
		data.put("boardid", boardid);
		return sql.selectOne(namespace + ".list", data);
	}
	//즐겨찾기 삭제
	@Override
	public void delete(String sitename, int boardid) {
		// TODO Auto-generated method stub
		
		HashMap data = new HashMap();
		
		data.put("sitename", sitename);
		data.put("boardid", boardid);
		
		sql.delete(namespace + ".delete", data);
	}
}
