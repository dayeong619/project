package com.yi.persistence;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.yi.domain.ManagementVO;

@Repository
public class ManagementDaoImpl implements ManagementDao {
	
	private static final String namespace = "com.yi.mapper.ManagementMapper";
	
	@Autowired
	SqlSession sqlSession;
	
	@Override
	public void insertManagement(ManagementVO vo) throws Exception {
		sqlSession.insert(namespace+".insertManagement", vo);
	}
	


	


}
