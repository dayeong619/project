package com.yi.persistence;

import java.util.List;

import com.yi.domain.DepartmentVO;

public interface DepartmentDao {

	public void insertDepartment(DepartmentVO vo) throws Exception;
	public List<DepartmentVO> selectAllDepartment() throws Exception;
	
}
