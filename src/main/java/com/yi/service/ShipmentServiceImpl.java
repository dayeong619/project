package com.yi.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yi.domain.ShipmentVO;
import com.yi.persistence.ShipmentDao;

@Service
public class ShipmentServiceImpl implements ShipmentService { 

	@Autowired
	ShipmentDao dao;

	@Override
	public void insertShipment(ShipmentVO vo) throws Exception {
		dao.insertShipment(vo);
	}

	@Override
	public List<ShipmentVO> selectShipmentByAll() throws Exception {
		return dao.selectShipmentByAll();
	}

	
	
}
