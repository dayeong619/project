package com.yi.persistence;

import java.util.List;

import com.yi.domain.WarehousingVO;

public interface WarehousingDao {

	public void insertWarehousing(WarehousingVO vo) throws Exception;
	public List<WarehousingVO> selectWarehousingByAll() throws Exception;
	public void deleteWarehousing(int wNo) throws Exception;
	public void modifyWarehousing(WarehousingVO vo) throws Exception;
	
	
	
}
