package com.yi.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yi.domain.DepartmentVO;
import com.yi.persistence.DepartmentDao;

@Service
public class DepartmentServiceImpl implements DepartmentService { 

	@Autowired
	DepartmentDao dao;

	@Override
	public void insertDepartment(DepartmentVO vo) throws Exception {
		dao.insertDepartment(vo);
	}

	@Override
	public List<DepartmentVO> selectAllDepartment() throws Exception {
		return dao.selectAllDepartment();
	}

	
	
}
