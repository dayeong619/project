package com.yi.persistence;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class BadnessDaoImpl implements BadnessDao {
	
	private static final String namespace = "com.yi.mapper.BadnessMapper";
	
	@Autowired
	SqlSession sqlSession;
	

}
