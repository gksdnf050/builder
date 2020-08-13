package com.company.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.company.dto.EventDTO;

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

	@Override
	public void change(String sitename, List<String> vals, List<Map<String, String>> selectlist) {
		// TODO Auto-generated method stub
		HashMap<String,String> map = new HashMap();
		map.put("sitename",sitename);
		sql.delete(namespace+".delete2",map);
		HashMap<String,String> data2 = new HashMap();
		data2.put("sitename",sitename);
		data2.put("fieldname","userid");
		data2.put("fieldtype","hidden");
		data2.put("depth","1");
		data2.put("parent","");
		sql.insert(namespace + ".change", data2);
		
		data2.put("fieldname","title");
		data2.put("fieldtype","title");
		data2.put("depth","1");
		data2.put("parent","");
		sql.insert(namespace + ".change", data2);
		
		for(String a : vals) {
			HashMap<String,String> data = new HashMap();
			data.put("sitename",sitename);
			String[] temp = a.substring(1, a.length()-1).split(",");
			for(int i = 1; i < temp.length; i++) {
				temp[i] = temp[i].trim();
			}
			for(String i: temp) {
				
				String[]temp2 = i.split("=");
				
				if(temp2.length>1) {
					data.put(temp2[0], temp2[1]);
				}else {
					data.put(temp2[0],"");
				} 
				
			}
			sql.insert(namespace + ".change", data);
		}
		
		
		data2.put("fieldname","content");
		data2.put("fieldtype","content");
		data2.put("depth","1");
		data2.put("parent","");
		sql.insert(namespace + ".change", data2);
		
		for(Map<String,String> list:selectlist) {
			HashMap<String,String> data = new HashMap();
			data.put("sitename",sitename);
			data.put("fieldname",list.get("fieldname"));
			data.put("fieldtype",list.get("fieldtype"));
			data.put("depth",list.get("depth"));
			data.put("parent",list.get("parent"));
			sql.insert(namespace + ".change", data);
		}
		
	}

	//이벤트 목록
	@Override
	public List<EventDTO> listevent(String sitename) {
		// TODO Auto-generated method stub
		HashMap<String,String> map = new HashMap();
		map.put("sitename",sitename);
		
		return sql.selectList(namespace + ".listevent",map);
	}

	//이벤트 조회
	@Override
	public EventDTO viewevent(String sitename, int eventid) {
		// TODO Auto-generated method stub
		HashMap data = new HashMap();
		data.put("sitename", sitename);
		data.put("eventid", eventid);
		
		return sql.selectOne(namespace + ".viewevent", data);
	}
	//이벤트 삭제
	@Override
	public void eventdelete(String sitename, int eventid) {
		// TODO Auto-generated method stub
		HashMap data = new HashMap();
		data.put("sitename", sitename);
		data.put("eventid", eventid);
		
		sql.delete(namespace + ".eventdelete", data);
	}

	//이벤트수정post
	@Override
	public void posteventmodify(String sitename, EventDTO dto) {
		// TODO Auto-generated method stub
		HashMap data = new HashMap();
		data.put("sitename", sitename);
		data.put("dto", dto);
		
		sql.update(namespace+".eventmodify", data);
	}

	@Override
	public String getlogo(String sitename) {
		// TODO Auto-generated method stub
		HashMap data = new HashMap();
		data.put("sitename", sitename);
		
		
		return sql.selectOne(namespace + ".getlogo", data);
	}
	//배너 등록
	@Override
	public void registerbanner(String sitename, String banner) {
		// TODO Auto-generated method stub
		HashMap data = new HashMap();
		data.put("sitename", sitename);
		data.put("banner", banner);
		
		
		
		
		sql.insert(namespace + ".registerbanner", data);
	}

	//배너 목록
	@Override
	public List listbanner(String sitename) {
		// TODO Auto-generated method stub
		HashMap<String,String> map = new HashMap();
		map.put("sitename",sitename);
		
		return sql.selectList(namespace + ".listbanner",map);
	}
	//배너 삭제
	@Override
	public void bannerdelete(String sitename, int bannerid) {
		// TODO Auto-generated method stub
		HashMap data = new HashMap();
		data.put("sitename", sitename);
		data.put("bannerid", bannerid);
		
		sql.delete(namespace + ".bannerdelete", data);
	}

}