package com.yi.persistence;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.yi.domain.GoodsVO;

@Repository
public class GoodsDaoImpl implements GoodsDao {
	
	private static final String namespace = "com.yi.mapper.GoodsMapper";
	
	@Autowired
	SqlSession sqlSession;

	@Override
	public List<GoodsVO> selectByGoods() throws Exception {
		return sqlSession.selectList(namespace+".selectByGoods");
	}

	@Override
	public GoodsVO selectAll(GoodsVO vo) throws Exception {
		return sqlSession.selectOne(namespace+".selectAll", vo);
	}
	
	
	


	


}
