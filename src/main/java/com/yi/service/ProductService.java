package com.yi.service;

import java.util.List;

import com.yi.domain.GoodsVO;
import com.yi.domain.LineVO;
import com.yi.domain.ManagementVO;
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
	
	//product 화면에 들어갈거
	public List<LineVO> selectByline() throws Exception;
	public List<WarehousingVO> selectWGByJoin() throws Exception; //wNo,Gname 필요해서
	public List<ManagementVO> selectByJoinInformation() throws Exception;
	public List<ProductVO> selectMnoWnoPqyByProduct() throws Exception;
	public List<ProductVO> selectJoinProductByPno(int pNo) throws Exception;
}
