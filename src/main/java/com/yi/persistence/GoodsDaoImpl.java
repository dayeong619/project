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

	@Override
	public void deleteGood(int gNo) throws Exception {
		sqlSession.update(namespace+".deleteGood", gNo);
	}

	@Override
	public void insertGood(GoodsVO vo) throws Exception {
		sqlSession.insert(namespace+".insertGood", vo);
	}

	@Override
	public List<GoodsVO> selectByGno(int gNo) throws Exception {
		return sqlSession.selectList(namespace+".selectByGno", gNo);
	}

	@Override
	public void modifyByGno(GoodsVO vo) throws Exception {
		sqlSession.update(namespace+".modifyByGno", vo);
	}

	@Override
	public List<GoodsVO> selectByGname(String gName) throws Exception {
		return sqlSession.selectList(namespace+".selectByGname", gName);
	}

	
	
	


	


}
