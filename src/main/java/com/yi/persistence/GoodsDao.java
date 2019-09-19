package com.yi.persistence;

import java.util.List;

import com.yi.domain.GoodsVO;

public interface GoodsDao {

	public List<GoodsVO> selectByGoods () throws Exception;
	
}
