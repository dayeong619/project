package com.yi.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yi.domain.ProductVO;
import com.yi.persistence.ProductDao;

@Service
public class ProductServiceImpl implements ProductService { 

	@Autowired
	ProductDao dao;

	@Override
	public void insertProduct(ProductVO vo) throws Exception {
		dao.insertProduct(vo);
	}

	@Override
	public List<ProductVO> selectProductByAll() throws Exception {
		return dao.selectProductByAll();
	}

	@Override
	public List<ProductVO> selectByManagementName() throws Exception {
		return dao.selectByManagementName();
	}

	@Override
	public List<ProductVO> selectByGoodsName() throws Exception {
		return dao.selectByGoodsName();
	}

	
	
}
