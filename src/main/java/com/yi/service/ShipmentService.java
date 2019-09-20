package com.yi.service;

import java.util.List;

import com.yi.domain.ShipmentVO;

public interface ShipmentService {
	
	public void insertShipment(ShipmentVO vo) throws Exception;
	public List<ShipmentVO> selectShipmentByAll() throws Exception;
	
}
