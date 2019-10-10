package com.yi.service;

import java.util.List;

import com.yi.domain.DepartmentVO;
import com.yi.domain.ManagementVO;
import com.yi.domain.TitleVO;

public interface ManagementService {
	
	public void insertManagement(ManagementVO vo) throws Exception;
	public List<ManagementVO> selectByJoinInformation() throws Exception;
	public List<ManagementVO> selectMyInformationById(String mId) throws Exception;
	
	public void insertWorker(ManagementVO vo) throws Exception;
	public List<ManagementVO> selectWorkerByWorkerName(String mName) throws Exception;

	public List<ManagementVO> selectByDno() throws Exception; 
	public void deleteWorkerByMno(int mNo) throws Exception;
	public void modifyWorkerByMno(ManagementVO vo) throws Exception;
	
	public List<DepartmentVO> selectAllDepartment() throws Exception;
	public List<TitleVO> selectAllTitle() throws Exception;
	public void modifyEmployee(ManagementVO vo) throws Exception;
	public List<ManagementVO> selectThreeJoinByDno(int dNo) throws Exception;
	
}
