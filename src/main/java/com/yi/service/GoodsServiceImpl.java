package com.yi.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yi.domain.GoodsVO;
import com.yi.persistence.GoodsDao;

@Service
public class GoodsServiceImpl implements GoodsService { 

	@Autowired
	GoodsDao dao;

	@Override
	public List<GoodsVO> selectByGoods() throws Exception {
		return dao.selectByGoods();
	}

	@Override
	public GoodsVO selectAll(GoodsVO vo) throws Exception {
		return dao.selectAll(vo);
	}

	@Override
	public void deleteGood(int gNo) throws Exception {
		dao.deleteGood(gNo);
	}

	

	
	
}
