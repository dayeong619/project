package com.yi.persistence;

import java.util.List;

import com.yi.domain.ProductVO;

public interface ProductDao {

	public void insertProduct(ProductVO vo) throws Exception;
	public List<ProductVO> selectProductByAll() throws Exception;
	
	
}