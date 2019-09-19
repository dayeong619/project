package com.yi.service;

import java.util.List;

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

	@Override
	public List<ManagementVO> selectByJoinInformation() throws Exception {
		return dao.selectByJoinInformation();
	}

	@Override
	public ManagementVO selectByIdAndPw(String mId, String mPw) throws Exception {
		return dao.selectByIdAndPw(mId, mPw);
	}

	
	
}
