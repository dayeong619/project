package com.yi.service;

import java.util.List;

import com.yi.domain.ManagementVO;

public interface ManagementService {
	
	public void insertManagement(ManagementVO vo) throws Exception;
	public List<ManagementVO> selectByJoinInformation() throws Exception;
	public List<ManagementVO> selectMyInformationById(String mId) throws Exception;
	
	public void insertWorker(ManagementVO vo) throws Exception;
	public List<ManagementVO> selectWorkerByWorkerName(String mName) throws Exception;

	public List<ManagementVO> selectByDno() throws Exception; 
	public void deleteWorkerByMno(int mNo) throws Exception;
}
