package com.yi.persistence;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.yi.domain.DepartmentVO;

@Repository
public class DepartmentDaoImpl implements DepartmentDao {
	
	private static final String namespace = "com.yi.mapper.DepartmentMapper";
	
	@Autowired
	SqlSession sqlSession;
	

	@Override
	public void insertDepartment(DepartmentVO vo) throws Exception {
		sqlSession.insert(namespace+".insertDepartment", vo);
	}


	@Override
	public List<DepartmentVO> selectAllDepartment() throws Exception {
		return sqlSession.selectList(namespace+".selectAllDepartment");
	}
	


	


}
