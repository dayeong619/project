package com.yi.service;

import java.util.List;

import com.yi.domain.DepartmentVO;

public interface DepartmentService {
	
	public void insertDepartment(DepartmentVO vo) throws Exception;
	public List<DepartmentVO> selectAllDepartment() throws Exception;
	
	
	
}
