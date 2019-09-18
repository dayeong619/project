package com.yi.service;

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

	
	
}
