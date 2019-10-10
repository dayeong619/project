package com.yi.persistence;

import java.util.List;

import com.yi.domain.WarehousingVO;

public interface WarehousingDao {

	public void insertWarehousing(WarehousingVO vo) throws Exception;
	public List<WarehousingVO> selectWarehousingByAll() throws Exception;
	public void deleteWarehousing(int wNo) throws Exception;
	public void modifyWarehousing(WarehousingVO vo) throws Exception;
	
	public List<WarehousingVO> selectWarehousing() throws Exception;
	public List<WarehousingVO> selectWarehousingByGNo(int gNo) throws Exception;
	public List<WarehousingVO> selectWhByWDay(String startday, String endday) throws Exception;
	
	public List<WarehousingVO> ChartWarehousingByGno() throws Exception;
	
	public List<WarehousingVO> selectWGByJoin() throws Exception;
	public List<WarehousingVO> selectByWno(int wNo) throws Exception;
}
