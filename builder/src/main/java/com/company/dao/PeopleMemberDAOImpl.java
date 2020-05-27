package com.company.dao;

import java.util.HashMap;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.company.dto.PeopleMemberDTO;



@Repository
public class PeopleMemberDAOImpl implements PeopleMemberDAO {

	@Inject
	private SqlSession sql;
	private static String namespace = "com.company.mappers.people.peopleMemberMapper";
	
	//회원가입
	@Override
	public void register(final String sitename, final PeopleMemberDTO dto) {
		// TODO Auto-generated method stub
		HashMap data = new HashMap();
		HashMap data2 = new HashMap();
		data.put("sitename", sitename);
		data.put("userid", dto.getUserid());
		data.put("userpass", dto.getUserpass());
		sql.insert(namespace+".register",data);
		
	}
	
	//로그인
	@Override
	public PeopleMemberDTO login(final String sitename, final PeopleMemberDTO dto) {
		// TODO Auto-generated method stub
		HashMap data = new HashMap();
		data.put("sitename", sitename);
		data.put("userid", dto.getUserid());
		data.put("userpass", dto.getUserpass());
		return sql.selectOne(namespace+".login",data);
	}
	//회원정보수정get
	@Override
	public PeopleMemberDTO getModify(String sitename, int userno) {
		// TODO Auto-generated method stub
		
		HashMap data = new HashMap();
		data.put("sitename", sitename);
		data.put("userno", userno);
		
		return sql.selectOne(namespace+".getModify",data);
	}
	//회원정보수정post
	@Override
	public void postModify(String sitename, PeopleMemberDTO dto) {
		// TODO Auto-generated method stub
		
		HashMap data = new HashMap();
		
		data.put("sitename", sitename);
		data.put("userid", dto.getUserid());
		data.put("userpass", dto.getUserpass());
		data.put("userno", dto.getUserno());
		 sql.update(namespace + ".postModify", data);
		
	}

}
