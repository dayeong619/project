package com.yi.service;

import java.util.List;

import com.yi.domain.WarehousingVO;

public interface WarehousingService {
	
	public void insertWarehousing(WarehousingVO vo) throws Exception;
	public List<WarehousingVO> selectWarehousingByAll() throws Exception;
	public void deleteWarehousing(int wNo) throws Exception;
	public void modifyWarehousing(WarehousingVO vo) throws Exception;
	
	public List<WarehousingVO> selectWarehousingByGNo(int gNo) throws Exception; //제품번호로 입고이력 찾기
	public List<WarehousingVO> selectWhByWDay(String startday, String endday) throws Exception; //날짜로 입고이력 찾기
	public List<WarehousingVO> ChartWarehousingByGno() throws Exception;
}
