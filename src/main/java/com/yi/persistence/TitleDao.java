package com.yi.persistence;

import java.util.List;

import com.yi.domain.TitleVO;

public interface TitleDao {

	public void inserttitle(TitleVO vo) throws Exception;
	public List<TitleVO> selectAllTitle() throws Exception;
	public TitleVO selectTitle (TitleVO vo);
}
