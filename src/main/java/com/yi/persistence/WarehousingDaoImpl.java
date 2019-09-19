package com.yi.persistence;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.yi.domain.WarehousingVO;

@Repository
public class WarehousingDaoImpl implements WarehousingDao {
	
	private static final String namespace = "com.yi.mapper.WarehousingMapper";
	
	@Autowired
	SqlSession sqlSession;
	
	@Override
	public void insertWarehousing(WarehousingVO vo) throws Exception {
		sqlSession.insert(namespace+".insertWarehousing", vo);
	}
	


	


}
