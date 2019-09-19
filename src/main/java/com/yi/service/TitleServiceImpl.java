package com.yi.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yi.domain.TitleVO;
import com.yi.persistence.TitleDao;

@Service
public class TitleServiceImpl implements TitleService { 

	@Autowired
	TitleDao dao;

	@Override
	public void insertTitle(TitleVO vo) throws Exception {
		dao.inserttitle(vo);
	}

	@Override
	public List<TitleVO> selectAllTitle() throws Exception {
		return dao.selectAllTitle();	
	}

	
	
}
