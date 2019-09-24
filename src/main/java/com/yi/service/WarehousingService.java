package com.yi.service;

import java.util.List;

import com.yi.domain.WarehousingVO;

public interface WarehousingService {
	
	public void insertWarehousing(WarehousingVO vo) throws Exception;
	public List<WarehousingVO> selectWarehousingByAll() throws Exception;
	public void deleteWarehousing(int wNo) throws Exception;
}
