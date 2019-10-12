package com.yi.persistence;

import java.util.List;

import com.yi.domain.ManagementVO;

public interface ManagementDao {

	public void insertManagement(ManagementVO vo) throws Exception;
	public List<ManagementVO> selectByJoinInformation() throws Exception;
	public ManagementVO selectByIdAndPw(String mId, String mPw) throws Exception;
	public List<ManagementVO> selectMyInformationById(String mId) throws Exception;
	
	public void insertWorker(ManagementVO vo) throws Exception;
	public List<ManagementVO> selectWorkerByWorkerName(String mName) throws Exception;
	
	public List<ManagementVO> selectByDno() throws Exception;
	public void deleteWorkerByMno(int mNo) throws Exception; //작업자관리에서 작업자삭제
	public void modifyWorkerByMno(ManagementVO vo) throws Exception;
	public void modifyEmployee(ManagementVO vo) throws Exception;
	public List<ManagementVO> selectThreeJoinByDno(int dNo) throws Exception;
	public List<ManagementVO> selectThreeJoinByDname(String dName) throws Exception;
	
	public List<ManagementVO> selectMypageByMid(String mId) throws Exception; //마이페이지
	public void modifyManagementByMypage(ManagementVO vo) throws Exception;

}
