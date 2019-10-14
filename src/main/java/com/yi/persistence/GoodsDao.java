package com.yi.persistence;

import java.util.List;

import com.yi.domain.GoodsVO;

public interface GoodsDao {

	public List<GoodsVO> selectByGoods () throws Exception;
	public GoodsVO selectAll (GoodsVO vo) throws Exception;
	public void deleteGood (int gNo) throws Exception;
	public void insertGood (GoodsVO vo) throws Exception;
	public List<GoodsVO> selectByGno(int gNo) throws Exception;
	public void modifyByGno (GoodsVO vo) throws Exception;
	
	public List<GoodsVO> selectByGname(String gName) throws Exception;
	
}
