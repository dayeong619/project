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
	public List<ManagementVO> selectMyInformationById(String mId) throws Exception {
		return dao.selectMyInformationById(mId);
	}

	@Override
	public void insertWorker(ManagementVO vo) throws Exception {
		dao.insertWorker(vo);
	}

	@Override
	public List<ManagementVO> selectWorkerByWorkerName(String mName) throws Exception {
		return dao.selectWorkerByWorkerName(mName);
	}

	@Override
	public List<ManagementVO> selectByDno() throws Exception {
		return dao.selectByDno();
	}

	@Override
	public void deleteWorkerByMno(int mNo) throws Exception {
		dao.deleteWorkerByMno(mNo);
		
	}

	
	
	
}
