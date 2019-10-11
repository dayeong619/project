package com.yi.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.yi.domain.GoodsVO;
import com.yi.domain.LineVO;
import com.yi.domain.ManagementVO;
import com.yi.domain.ProductVO;
import com.yi.domain.WarehousingVO;
import com.yi.persistence.GoodsDao;
import com.yi.persistence.LineDao;
import com.yi.persistence.ManagementDao;
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
	
	@Autowired
	LineDao ldao;
	
	@Autowired
	ManagementDao mdao;
	
	@Override
	@Transactional
	public void insertProduct(ProductVO vo) throws Exception {
		int pdno = dao.nextPno();
		vo.setpNo(pdno);
		dao.insertProduct(vo);
		System.out.println("ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ여기service"+vo.getpNo());
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

	@Override
	public List<LineVO> selectByline() throws Exception {
		return ldao.selectByline();
	}

	@Override
	public List<WarehousingVO> selectWGByJoin() throws Exception {
		return wdao.selectWGByJoin();
	}

	@Override
	public List<ManagementVO> selectByJoinInformation() throws Exception {
		return mdao.selectByJoinInformation();
	}

	@Override
	public List<ProductVO> selectMnoWnoPqyByProduct() throws Exception {
		return dao.selectMnoWnoPqyByProduct();
	}

	@Override
	public List<ProductVO> selectJoinProductByPno(int pNo) throws Exception {
		return dao.selectJoinProductByPno(pNo);
	}

	

	

	
}
