package com.yi.service;

import java.util.List;

import com.yi.domain.DepartmentVO;
import com.yi.domain.ManagementVO;
import com.yi.domain.TitleVO;

public interface LoginService {
	
	public ManagementVO selectByIdAndPw(String mId, String mPw) throws Exception;
	public void insertManagement(ManagementVO vo) throws Exception;
	public List<DepartmentVO> selectAllDepartment() throws Exception;
	public List<TitleVO> selectAllTitle() throws Exception;
	
	
	
	
	
}
