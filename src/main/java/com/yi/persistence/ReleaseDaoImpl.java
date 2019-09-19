package com.yi.persistence;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.yi.domain.ReleaseVO;

@Repository
public class ReleaseDaoImpl implements ReleaseDao {
	
	private static final String namespace = "com.yi.mapper.ReleaseMapper";
	
	@Autowired
	SqlSession sqlSession;
	
	@Override
	public void insertRelease(ReleaseVO vo) throws Exception {
		sqlSession.insert(namespace+".insertRelease", vo);
	}
	


	


}
