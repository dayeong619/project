package com.yi.persistence;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.yi.domain.ManagementVO;

@Repository
public class ManagementDaoImpl implements ManagementDao {
	
	private static final String namespace = "com.yi.mapper.ManagementMapper";
	
	@Autowired
	SqlSession sqlSession;
	
	@Override
	public void insertManagement(ManagementVO vo) throws Exception {
		sqlSession.insert(namespace+".insertManagement", vo);
	}

	@Override
	public List<ManagementVO> selectByJoinInformation() throws Exception {
		return sqlSession.selectList(namespace+".selectByJoinInformation");
	}

	@Override
	public ManagementVO selectByIdAndPw(String mId, String mPw) throws Exception {
		Map<String, String> map = new HashMap<>();
		map.put("mId", mId);
		map.put("mPw", mPw);
		
		return sqlSession.selectOne(namespace+".selectByIdAndPw", map);
	}

	@Override
	public List<ManagementVO> selectMyInformationById(String mId) throws Exception {
		return sqlSession.selectList(namespace+".selectMyInformationById", mId);
	}

	@Override
	public void insertWorker(ManagementVO vo) throws Exception {
		sqlSession.insert(namespace+".insertWorker", vo);
	}


	@Override
	public List<ManagementVO> selectWorkerByWorkerName(String mName) throws Exception {
		return sqlSession.selectList(namespace+".selectWorkerByWorkerName", mName);
	}

	@Override
	public List<ManagementVO> selectByDno() throws Exception {
		return sqlSession.selectList(namespace+".selectByDno");
	}

	@Override
	public void deleteWorkerByMno(int mNo) throws Exception {
		sqlSession.update(namespace+".deleteWorkerByMno", mNo);
	}

	@Override
	public void modifyWorkerByMno(ManagementVO vo) throws Exception {
		sqlSession.update(namespace+".modifyWorkerByMno", vo);
	}

	


	


}
