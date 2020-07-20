package com.company.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;


@Repository
public class AllbaBoardDAOImpl implements AllbaBoardDAO {

	@Inject
	private SqlSession sql;
	private static String namespace = "com.company.mappers.allba.allbaBoardMapper";

/*	private String career[]= {"all","new","experienced"};
	private String occupation[]= {"management","servingkitchen","service","sales","education","production","accounting","itdesign"};
	private String location[]= {"seoul","busan","incheon"}; */


	//게시물 목록
	@Override
	public List<Map<String,String>> list(final String sitename, final String category, final String value, final String c) {
		// TODO Auto-generated method stub
		HashMap data = new HashMap();
		
		data.put("sitename", sitename);
		data.put("value",value);
		if(category == null) {
			

			return sql.selectList(namespace + ".list",data);
		}else {
			data.put("category",category);
			if(c.equals("clothes")) {
				return sql.selectList(namespace + ".categorylist2",data);
			}else if(c.equals("allba")){
				return sql.selectList(namespace + ".categorylist",data);
			}
			else return null;
		}
	}

	//게시물 작성
	@Override
	public void write(String sitename, List<String> list, String[] str) {
		// TODO Auto-generated method stub
		HashMap data = new HashMap();
		data.put("sitename",sitename);
		data.put("str", str[0]);
		data.put("list", list.get(0));
		
		sql.insert(namespace + ".write", data); 
		
		int boardid = sql.selectOne(namespace + ".boardid",data);
		
		for(int i = 1; i < list.size(); i++) {
			HashMap map2 = new HashMap();
			map2.put("sitename", sitename);
			map2.put("str", str[i]);
			map2.put("list", list.get(i));
			map2.put("boardid", boardid);
			sql.update(namespace + ".writeupdate",map2);
		}
		
		
	}

/*		@Override
		public void write(final String sitename, final AllbaBoardDTO dto) {
			// TODO Auto-generated method stub
			
			HashMap data = new HashMap();
			
			data.put("sitename", sitename);
			data.put("userid", dto.getUserid());
			data.put("title", dto.getTitle());
			data.put("career", dto.get경력());
			data.put("gender", dto.getGender());
			data.put("occupation", dto.get직종());
			data.put("date", dto.getDate());
			data.put("location", dto.get지역());
			data.put("address", dto.getAddress());
			data.put("money", dto.getMoney());
			data.put("image", dto.getImage());
			data.put("content", dto.getContent());
			data.put("deadline", dto.getDeadline());
			sql.insert(namespace + ".write", data); 
		}
 */
	//게시물 조회/수정 get
	@Override
	public Map<String,String> view(final String sitename, final int boardid) {
		// TODO Auto-generated method stub
		HashMap data = new HashMap();
		data.put("sitename", sitename);
		data.put("boardid", boardid);
		return sql.selectOne(namespace + ".view", data);
	}
	//게시물 수정post
	@Override
	public void modify(String sitename, final List<String> list, final String[] str, int boardid) {
		// TODO Auto-generated method stub

		
		for(int i = 0; i < list.size(); i++) {
			HashMap data = new HashMap();
			data.put("sitename", sitename);
			data.put("str", str[i]);
			data.put("list", list.get(i));
			data.put("boardid", boardid);
			sql.update(namespace + ".modify", data); 
		}
	
		 
	}
	//게시물 삭제
	@Override
	public void delete(String sitename, int boardid) {
		// TODO Auto-generated method stub
		HashMap data = new HashMap();
		
		data.put("sitename", sitename);
		data.put("boardid", boardid);
		
		sql.delete(namespace + ".delete", data);
		sql.delete(namespace + ".bookmarkdelete",data);
	}
	//게시물 검색
	@Override
	public  List<Map<String,String>> search(String sitename, String keyword) {
		// TODO Auto-generated method stub
		HashMap data = new HashMap();
		data.put("sitename", sitename);
		data.put("keyword", keyword);
		
		return sql.selectList(namespace + ".search",data);
	}
	//게시물 즐겨찾기 등록
	@Override
	public void regbookmark(String sitename, int boardid, String userid) {
		// TODO Auto-generated method stub
		HashMap data = new HashMap();
		data.put("sitename", sitename);
		data.put("boardid", boardid);
		data.put("userid", userid);
		
		sql.insert(namespace + ".regbookmark", data);
		
	}
	// 즐겨찾기 등록된 게시물id 가져오기
	@Override
	public List<Integer> getbookmarkid(String sitename, String userid) {
		// TODO Auto-generated method stub
		HashMap data = new HashMap();
		data.put("sitename", sitename);
		data.put("userid", userid);
		
		return sql.selectList(namespace + ".getbookmarkid",data);
		
	}
	//필드 목록 가져오기
	@Override
	public List<Map<String, String>> fieldlist(String sitename) {
		// TODO Auto-generated method stub
		HashMap data = new HashMap();
		data.put("sitename", sitename);
		return sql.selectList(namespace + ".fieldlist",data);
	}
	//필드 선택목록 가져오기
	@Override
	public List<Map<String, String>> selectlist(String sitename) {
		// TODO Auto-generated method stub
		HashMap data = new HashMap();
		data.put("sitename", sitename);
		return sql.selectList(namespace + ".selectlist",data);
	}

}