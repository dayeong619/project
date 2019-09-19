package com.yi.service;

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

	
	
}
