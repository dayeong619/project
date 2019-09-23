package com.yi.persistence;

import java.util.List;

import com.yi.domain.WarehousingVO;

public interface WarehousingDao {

	public void insertWarehousing(WarehousingVO vo) throws Exception;
	public List<WarehousingVO> selectWarehousingByAll() throws Exception;
	
}