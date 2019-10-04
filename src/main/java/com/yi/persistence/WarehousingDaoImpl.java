package com.yi.persistence;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.yi.domain.WarehousingVO;

@Repository
public class WarehousingDaoImpl implements WarehousingDao {
	
	private static final String namespace = "com.yi.mapper.WarehousingMapper";
	
	@Autowired
	SqlSession sqlSession;
	
	@Override
	public void insertWarehousing(WarehousingVO vo) throws Exception {
		sqlSession.insert(namespace+".insertWarehousing", vo);
	}

	@Override
	public List<WarehousingVO> selectWarehousingByAll() throws Exception {
		return sqlSession.selectList(namespace+".selectWarehousingByAll");
	}

	@Override
	public void deleteWarehousing(int wNo) throws Exception {
		sqlSession.delete(namespace+".deleteWarehousing", wNo);
	}

	@Override
	public void modifyWarehousing(WarehousingVO vo) throws Exception {
		sqlSession.update(namespace+".modifyWarehousing", vo);
	}

	@Override
	public List<WarehousingVO> selectWarehousing() throws Exception {
		return sqlSession.selectList(namespace+".selectWarehousing");
	}

	@Override
	public List<WarehousingVO> selectWarehousingByGNo(int gNo) throws Exception {
		return sqlSession.selectList(namespace+".selectWarehousingByGNo", gNo);
	}

	@Override
	public List<WarehousingVO> selectWhByWDay(String startday, String endday) throws Exception {
		Map<String, Object> map = new HashMap<>();
		map.put("startday", startday);
		map.put("endday", endday);
		
		return sqlSession.selectList(namespace+".selectWhByWDay", map);
	}

	@Override
	public List<WarehousingVO> ChartWarehousingByGno() throws Exception {
		return sqlSession.selectList(namespace+".ChartWarehousingByGno");
	}
	


	


}
