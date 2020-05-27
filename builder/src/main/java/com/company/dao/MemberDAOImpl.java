package com.company.dao;

import java.util.HashMap;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.company.dto.MemberDTO;

@Repository
public class MemberDAOImpl implements MemberDAO {

	@Inject
	private SqlSession sql;
	private static String namespace = "com.company.mappers.memberMapper";

	// 회원가입
	@Override
	public void register(final MemberDTO dto) {
		// TODO Auto-generated method stub
		sql.insert(namespace + ".register", dto);
	}

	// 로그인
	@Override
	public MemberDTO login(final MemberDTO dto) {
		// TODO Auto-generated method stub
		return sql.selectOne(namespace + ".login", dto);
	}

	// 회원정보수정 get
	@Override
	public MemberDTO getModify(int userno) {
		// TODO Auto-generated method stub
		HashMap data = new HashMap();
		data.put("userno", userno);

		return sql.selectOne(namespace + ".getModify", data);
	}

	// 회원정보수정 post
	@Override
	public void postModify(MemberDTO dto) {
		// TODO Auto-generated method stub
		HashMap data = new HashMap();

		data.put("userid", dto.getUserid());
		data.put("userpass", dto.getUserpass());
		data.put("userno", dto.getUserno());
		sql.update(namespace + ".postModify", data);
	}

}
