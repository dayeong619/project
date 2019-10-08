package com.yi.persistence;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.yi.domain.LineVO;

@Repository
public class LineDaoImpl implements LineDao {
	
	private static final String namespace = "com.yi.mapper.LineMapper";
	
	@Autowired
	SqlSession sqlSession;

	@Override
	public List<LineVO> selectByline() throws Exception {
		return sqlSession.selectList(namespace+".selectByline");
	}
	
	
}
