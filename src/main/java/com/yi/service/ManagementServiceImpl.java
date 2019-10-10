package com.yi.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yi.domain.DepartmentVO;
import com.yi.domain.ManagementVO;
import com.yi.domain.TitleVO;
import com.yi.persistence.DepartmentDao;
import com.yi.persistence.ManagementDao;
import com.yi.persistence.TitleDao;

@Service
public class ManagementServiceImpl implements ManagementService { 

	@Autowired
	ManagementDao dao;
	
	@Autowired
	TitleDao tdao;
	
	@Autowired
	DepartmentDao ddao;
	
	

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

	@Override
	public void modifyWorkerByMno(ManagementVO vo) throws Exception {
		dao.modifyWorkerByMno(vo);
	}

	@Override
	public List<DepartmentVO> selectAllDepartment() throws Exception {
		return ddao.selectAllDepartment();
	}

	@Override
	public List<TitleVO> selectAllTitle() throws Exception {
		return tdao.selectAllTitle();
	}

	@Override
	public void modifyEmployee(ManagementVO vo) throws Exception {
		dao.modifyEmployee(vo);
	}

	@Override
	public List<ManagementVO> selectThreeJoinByDno(int dNo) throws Exception {
		return dao.selectThreeJoinByDno(dNo);
	}

	
	
}
