package com.yi.service;

import java.util.List;

import com.yi.domain.ManagementVO;

public interface ManagementService {
	
	public void insertManagement(ManagementVO vo) throws Exception;
	public List<ManagementVO> selectByJoinInformation() throws Exception;
	public ManagementVO selectByIdAndPw(String mId, String mPw) throws Exception;
	public List<ManagementVO> selectMyInformationById(String mId) throws Exception;
}
