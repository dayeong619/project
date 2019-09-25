package com.yi.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yi.domain.WarehousingVO;
import com.yi.persistence.WarehousingDao;

@Service
public class WarehousingServiceImpl implements WarehousingService { 

	@Autowired
	WarehousingDao dao;

	@Override
	public void insertWarehousing(WarehousingVO vo) throws Exception {
		dao.insertWarehousing(vo);
	}

	@Override
	public List<WarehousingVO> selectWarehousingByAll() throws Exception {
		return dao.selectWarehousingByAll();
	}

	@Override
	public void deleteWarehousing(int wNo) throws Exception {
		dao.deleteWarehousing(wNo);
	}

	@Override
	public void modifyWarehousing(WarehousingVO vo) throws Exception {
		dao.modifyWarehousing(vo);
	}

	
	
}
