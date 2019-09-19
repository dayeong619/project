package com.yi.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yi.domain.ReleaseVO;
import com.yi.persistence.ReleaseDao;

@Service
public class ReleaseServiceImpl implements ReleaseService { 

	@Autowired
	ReleaseDao dao;

	@Override
	public void insertRelease(ReleaseVO vo) throws Exception {
		dao.insertRelease(vo);
	}

	
	
}
