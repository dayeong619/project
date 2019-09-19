package com.yi.persistence;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.yi.domain.TitleVO;

@Repository
public class TitleDaoImpl implements TitleDao {
	
	private static final String namespace = "com.yi.mapper.TitleMapper";
	
	@Autowired
	SqlSession sqlSession;
	

	@Override
	public void inserttitle(TitleVO vo) throws Exception {
		sqlSession.insert(namespace+".insertTitle", vo);
	}


	@Override
	public List<TitleVO> selectAllTitle() throws Exception {
		return sqlSession.selectList(namespace+".selectAllTitle");
	}
	


	


}
