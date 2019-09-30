package com.yi.persistence;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.yi.domain.ProductVO;

@Repository
public class ProductDaoImpl implements ProductDao {
	
	private static final String namespace = "com.yi.mapper.ProductMapper";
	
	@Autowired
	SqlSession sqlSession;
	
	@Override
	public void insertProduct(ProductVO vo) throws Exception {
		sqlSession.insert(namespace+".insertProduct", vo);
	}

	@Override
	public List<ProductVO> selectProductByAll() throws Exception {
		return sqlSession.selectList(namespace+".selectProductByAll");
	}

	@Override
	public List<ProductVO> selectByManagementName() throws Exception {
		return sqlSession.selectList(namespace+".selectByManagementName");
	}

	@Override
	public List<ProductVO> selectByGoodsName() throws Exception {
		return sqlSession.selectList(namespace+".selectByGoodsName");
	}
	


	


}
