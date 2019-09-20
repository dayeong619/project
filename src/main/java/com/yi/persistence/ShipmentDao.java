package com.yi.persistence;

import java.util.List;

import com.yi.domain.ShipmentVO;

public interface ShipmentDao {

	public void insertShipment(ShipmentVO vo) throws Exception;
	public List<ShipmentVO> selectShipmentByAll() throws Exception;
	
}
