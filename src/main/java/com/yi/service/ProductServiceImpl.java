package com.yi.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.yi.domain.GoodsVO;
import com.yi.domain.ProductVO;
import com.yi.domain.WarehousingVO;
import com.yi.persistence.GoodsDao;
import com.yi.persistence.ProductDao;
import com.yi.persistence.WarehousingDao;

@Service
public class ProductServiceImpl implements ProductService { 

	@Autowired
	ProductDao dao;

	@Autowired
	GoodsDao gdao;
	
	@Autowired
	WarehousingDao wdao;
	
	@Override
	@Transactional
	public void insertProduct(ProductVO vo) throws Exception {
		dao.insertProduct(vo);
		dao.insertBadness(vo.getpNo(), vo.getbProcess(), vo.getbSetup(), vo.getbMaterial(), vo.getbEtc());
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

	@Override
	public List<GoodsVO> selectByGoods() throws Exception {
		return gdao.selectByGoods();
	}

	@Override
	public List<ProductVO> selectProductByLine() throws Exception {
		return dao.selectProductByLine();
	}

	@Override
	public List<WarehousingVO> selectWarehousing() throws Exception {
		return wdao.selectWarehousing();
	}

	

	

	
}
