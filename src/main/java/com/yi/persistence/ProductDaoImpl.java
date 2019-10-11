package com.yi.persistence;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

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
	public void insertBadness(int pNo, int bProcess, int bSetup, int bMaterial, int bEtc) throws Exception {
		Map<String, Integer> map = new HashMap<>();
		map.put("pNo", pNo);
		map.put("bProcess", bProcess);
		map.put("bSetup", bSetup);
		map.put("bMaterial", bMaterial);
		map.put("bEtc", bEtc);
		
		sqlSession.insert(namespace+".insertBadness", map);
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

	@Override
	public List<ProductVO> selectProductByLine() throws Exception {
		return sqlSession.selectList(namespace+".selectProductByLine");
	}

	@Override
	public int nextPno() {
		return sqlSession.selectOne(namespace+".nextPno");
	}

	@Override
	public List<ProductVO> selectMnoWnoPqyByProduct() throws Exception {
		return sqlSession.selectList(namespace+".selectMnoWnoPqyByProduct");
	}

	@Override
	public List<ProductVO> selectJoinProductByPno(int pNo) throws Exception {
		return sqlSession.selectList(namespace+".selectJoinProductByPno", pNo);
	}

	
	


	


}
