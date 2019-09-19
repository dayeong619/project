package com.yi.service;

import java.util.List;

import com.yi.domain.TitleVO;

public interface TitleService {
	
	public void insertTitle(TitleVO vo) throws Exception;
	public List<TitleVO> selectAllTitle() throws Exception;
}
