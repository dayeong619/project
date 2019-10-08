package com.yi.persistence;

import java.util.List;

import com.yi.domain.LineVO;

public interface LineDao {


	//product 화면에 들어갈거
	public List<LineVO> selectByline() throws Exception;
	
}
