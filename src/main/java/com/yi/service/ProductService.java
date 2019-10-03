package com.yi.service;

import java.util.List;

import com.yi.domain.GoodsVO;
import com.yi.domain.ProductVO;
import com.yi.domain.WarehousingVO;

public interface ProductService {
	
	public void insertProduct(ProductVO vo) throws Exception;
	public List<ProductVO> selectProductByAll() throws Exception;
	public List<ProductVO> selectByManagementName() throws Exception;
	public List<ProductVO> selectByGoodsName() throws Exception;
	public List<GoodsVO> selectByGoods () throws Exception;

	public List<ProductVO> selectProductByLine() throws Exception;
	public List<WarehousingVO> selectWarehousing() throws Exception;
	
}
