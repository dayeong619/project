package com.yi.persistence;

import java.util.List;

import com.yi.domain.GoodsVO;

public interface GoodsDao {

	public List<GoodsVO> selectByGoods () throws Exception;
	public GoodsVO selectAll (GoodsVO vo) throws Exception;
	public void deleteGood (int gNo) throws Exception;
}
