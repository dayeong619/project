package com.yi.persistence;

import java.util.List;

import com.yi.domain.ManagementVO;

public interface ManagementDao {

	public void insertManagement(ManagementVO vo) throws Exception;
	public List<ManagementVO> selectByJoinInformation() throws Exception;
	public ManagementVO selectByIdAndPw(String mId, String mPw) throws Exception;
	
	
	
	
	
	
	
	
	
	
	
}
