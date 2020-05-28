package com.company.dao;

import java.util.HashMap;
import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.company.dto.AllbaBoardDTO;

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
	public List<AllbaBoardDTO> list(final String sitename, final String category, final String value) {
		// TODO Auto-generated method stub
		HashMap data = new HashMap();
		data.put("sitename", sitename);
		data.put("value",value);
		if(category == null) {

			return sql.selectList(namespace + ".list",data);
		}else if(category.equals("career")){

			return sql.selectList(namespace + ".careerlist",data);
		}else if(category.equals("occupation")){

			return sql.selectList(namespace + ".occupationlist",data);
		}else if(category.equals("location")) {
			return sql.selectList(namespace + ".locationlist",data);
		}else {
			return null;
		}
	}

	//게시물 작성
		@Override
		public void write(final String sitename, final AllbaBoardDTO dto) {
			// TODO Auto-generated method stub
			
			HashMap data = new HashMap();
			
			data.put("sitename", sitename);
			data.put("userid", dto.getUserid());
			data.put("title", dto.getTitle());
			data.put("career", dto.getCareer());
			data.put("gender", dto.getGender());
			data.put("occupation", dto.getOccupation());
			data.put("date", dto.getDate());
			data.put("location", dto.getLocation());
			data.put("address", dto.getAddress());
			data.put("money", dto.getMoney());
			data.put("image", dto.getImage());
			data.put("content", dto.getContent());
			data.put("deadline", dto.getDeadline());
			sql.insert(namespace + ".write", data); 
		}

	//게시물 조회/수정 get
	@Override
	public AllbaBoardDTO view(final String sitename, final int boardid) {
		// TODO Auto-generated method stub
		HashMap data = new HashMap();
		data.put("sitename", sitename);
		data.put("boardid", boardid);
		return sql.selectOne(namespace + ".view", data);
	}
	//게시물 수정post
	@Override
	public void modify(String sitename, AllbaBoardDTO dto) {
		// TODO Auto-generated method stub
		HashMap data = new HashMap();
		
		data.put("sitename", sitename);
		data.put("boardid", dto.getBoardid());
		data.put("title", dto.getTitle());
		data.put("career", dto.getCareer());
		data.put("gender", dto.getGender());
		data.put("occupation", dto.getOccupation());
		data.put("date", dto.getDate());
		data.put("location", dto.getLocation());
		data.put("address", dto.getAddress());
		data.put("money", dto.getMoney());
		data.put("image", dto.getImage());
		data.put("content", dto.getContent());
		data.put("deadline", dto.getDeadline());
	
		 sql.update(namespace + ".modify", data); 
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
	public List<AllbaBoardDTO> search(String sitename, String keyword) {
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

}
