package com.company.dao;

import java.util.HashMap;
import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.company.dto.SiteDTO;
@Repository
public class SiteDAOImpl implements SiteDAO {
	@Inject
	private SqlSession sql;

	private static String namespace = "com.company.mappers.siteMapper";
	
	//사이트 목록
	@Override
	public List<SiteDTO> list(final String userid) {
		// TODO Auto-generated method stub
		return sql.selectList(namespace + ".list",userid);
	}
	
	//사이트 생성
	@Override
	public void create(final String userid, final String userpass, final String sitename, final String category, final String status) {
		// TODO Auto-generated method stub
		 HashMap data = new HashMap();
		  
		 data.put("userid", userid);
		 data.put("userpass", userpass);
		 data.put("sitename", sitename);
		 data.put("category", category);
		 data.put("status", status);
		if(status.equals("deploy")) {
			String member = "create table "+ sitename +"(userno int not null auto_increment, management varchar(50), \r\n" + 
					"  userid varchar(50) not null,\r\n" + 
					"  userpass varchar(50) not null,\r\n" + 
					"   regDate     date           not null default now(),\r\n" + 
					"  primary key(userid),\r\n" + 
					"  UNIQUE(userno))";
			data.put("member",member);
			sql.update(namespace+".createmember",data);
			sql.insert(namespace+".management",data);
			
			String bookmark = "create table "+sitename+"bookmark(boardid int,userid varchar(50) not null)";
			data.put("bookmark",bookmark);
			sql.update(namespace+".createbookmark",data);
			
			String notebox = "create table "+sitename+"notebox(noteboxid INT NOT NULL AUTO_INCREMENT PRIMARY KEY,\r\n" + 
					"boardid int,\r\n" + 
					"touserid varchar(50) not null,\r\n" + 
					"fromuserid varchar(50) not null,\r\n" + 
					"title varchar(50),\r\n" + 
					"content varchar(300))";
			data.put("notebox",notebox);
			sql.update(namespace+".createnotebox",data);
			
			if(category.equals("product")) {
				String board = "create table "+sitename+"board(location varchar(50))";
				data.put("board",board);
				sql.update(namespace+".createboard",data);
			}
			if(category.equals("location")) {
				String board = "create table "+sitename+"board(location varchar(50))";
				data.put("board",board);
				sql.update(namespace+".createboard",data);
			}
			
			if(category.equals("people")) {
				String board = "create table "+sitename+"board(boardid int not null AUTO_INCREMENT PRIMARY KEY,\r\n" + 
						"regdate date not null default now(),\r\n" + 
						"userid VARCHAR(50),\r\n" + 
						"title varchar(50),\r\n" + 
						"career varchar(50),\r\n" + 
						"gender varchar(50),\r\n" + 
						"occupation varchar(50), \r\n" + 
						"date varchar(50), \r\n" + 
						"location varchar(50), \r\n" + 
						"address varchar(50), \r\n" + 
						"money varchar(50),\r\n" + 
						"image varchar(300),\r\n" + 
						"content varchar(300),\r\n" + 
						"deadline date)";
				data.put("board",board);
				sql.update(namespace+".createboard",data);
			}
		}
		
		
		sql.insert(namespace+".create",data);
	}
	
	//사이트 삭제
	@Override
	public void delete(final int siteid, final String sitename, final String status) {
		// TODO Auto-generated method stub
		HashMap data = new HashMap();
		
		if(status.equals("deploy")) {
			String member = "drop table "+ sitename;
			String board = "drop table "+ sitename+"board";
			String bookmark = "drop table "+ sitename+"bookmark";
			String notebox = "drop table "+ sitename+"notebox";
			
			 data.put("member",member);
			 data.put("board",board);
			 data.put("bookmark",bookmark);
			 data.put("notebox",notebox);
			 
			sql.delete(namespace+".deletemember",data);
			sql.delete(namespace+".deleteboard",data);
			sql.delete(namespace+".deletebookmark",data);
			sql.delete(namespace+".deletenotebox",data);
			
		}else {
			
		}
		sql.delete(namespace+".delete",siteid);
	}

	//사이트 수정get
	@Override
	public SiteDTO view(int siteid) {
		// TODO Auto-generated method stub
		return sql.selectOne(namespace+".view", siteid);
	}
	//사이트 수정post
	@Override
	public void modify(int siteid, String sitename, String category, String status) {
		// TODO Auto-generated method stub
		 HashMap data = new HashMap();
		  
		 data.put("siteid",siteid);
		 data.put("sitename",sitename);
		 data.put("category",category);
		 data.put("status",status);
		 sql.update(namespace + ".modifysite", data);
		 
		 if(status.equals("deploy")) {
				String member = "create table "+ sitename +"(userno int not null auto_increment,\r\n" + 
						"  userid varchar(50) not null,\r\n" + 
						"  userpass varchar(50) not null,\r\n" + 
						"   regDate     date           not null default now(),\r\n" + 
						"  primary key(userid),\r\n" + 
						"  UNIQUE(userno))";
				data.put("member",member);
				sql.update(namespace+".createmember",data);
				if(category.equals("product")) {
					String board = "create table "+sitename+"board(location varchar(50))";
					data.put("board",board);
					sql.update(namespace+".createboard",data);
				}
				if(category.equals("location")) {
					String board = "create table "+sitename+"board(location varchar(50))";
					data.put("board",board);
					sql.update(namespace+".createboard",data);
				}
				
				if(category.equals("people")) {
					String board = "create table "+sitename+"board(location varchar(50))";
					data.put("board",board);
					sql.update(namespace+".createboard",data);
				}
			}
		
	}

}
