package com.yi.persistence;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.yi.domain.ShipmentVO;

@Repository
public class ShipmentDaoImpl implements ShipmentDao {
	
	private static final String namespace = "com.yi.mapper.ShipmentMapper";
	
	@Autowired
	SqlSession sqlSession;
	
	@Override
	public void insertShipment(ShipmentVO vo) throws Exception {
		sqlSession.insert(namespace+".insertShipment", vo);
	}

	@Override
	public List<ShipmentVO> selectShipmentByAll() throws Exception {
		return sqlSession.selectList(namespace+".selectShipmentByAll");
	}

	@Override
	public List<ShipmentVO> selectShipment() throws Exception {
		return sqlSession.selectList(namespace+".selectShipment");
	}
	


	


}
