package com.yi.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yi.domain.ManagementVO;
import com.yi.persistence.ManagementDao;

@Service
public class ManagementServiceImpl implements ManagementService { 

	@Autowired
	ManagementDao dao;

	@Override
	public void insertManagement(ManagementVO vo) throws Exception {
		dao.insertManagement(vo);
	}

	
	
}
