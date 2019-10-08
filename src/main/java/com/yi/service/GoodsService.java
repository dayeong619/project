package com.yi.service;

import java.util.List;

import com.yi.domain.GoodsVO;

public interface GoodsService {
	
	public List<GoodsVO> selectByGoods () throws Exception;
	public GoodsVO selectAll (GoodsVO vo) throws Exception;
	public void deleteGood (int gNo) throws Exception;
	
	
}
