package com.yi.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yi.domain.DepartmentVO;
import com.yi.domain.ManagementVO;
import com.yi.domain.TitleVO;
import com.yi.persistence.DepartmentDao;
import com.yi.persistence.ManagementDao;
import com.yi.persistence.ProductDao;
import com.yi.persistence.TitleDao;

@Service
public class LoginServiceImpl implements LoginService { 

	@Autowired
	ManagementDao mdao;

	@Autowired
	ProductDao pdao;
	
	@Autowired
	DepartmentDao ddao;
	
	@Autowired
	TitleDao tdao;

	
	@Override
	public ManagementVO selectByIdAndPw(String mId, String mPw) throws Exception {
		return mdao.selectByIdAndPw(mId, mPw);
	}

	@Override
	public void insertManagement(ManagementVO vo) throws Exception {
		mdao.insertManagement(vo);
	}

	@Override
	public List<DepartmentVO> selectAllDepartment() throws Exception { //DepartmentDao
		return ddao.selectAllDepartment();
	}

	@Override
	public List<TitleVO> selectAllTitle() throws Exception { //TitleDao
		return tdao.selectAllTitle();	
	}
	
	
}
