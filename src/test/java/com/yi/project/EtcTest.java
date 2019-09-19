package com.yi.project;

import java.util.List;

import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.yi.domain.DepartmentVO;
import com.yi.domain.GoodsVO;
import com.yi.domain.ManagementVO;
import com.yi.domain.TitleVO;
import com.yi.persistence.DepartmentDao;
import com.yi.persistence.GoodsDao;
import com.yi.persistence.ManagementDao;
import com.yi.persistence.TitleDao;

@RunWith(SpringJUnit4ClassRunner.class) //junit
@ContextConfiguration(locations={"file:src/main/webapp/WEB-INF/spring/root-context.xml"}) //설정파일은 요거닷
public class EtcTest {
	
	@Autowired
	ManagementDao dao;
	
	@Autowired
	TitleDao tdao;
	
	@Autowired
	DepartmentDao ddao;
	
	@Autowired
	GoodsDao gdao;
	
////	@Test
//	public void createTest() throws Exception {
//		ManagementVO vo  = new ManagementVO();
//		vo.setmId("leejsjs");
//		vo.setmPw("leejs71");
//		vo.setmName("이종석");
//		vo.setmBirth(19710111);
//		vo.setmEmail("leegs@naber.com");
//		List<DepartmentVO> dlist = ddao.selectAll();
//		for(DepartmentVO dp : dlist) {
//			System.out.println(dp);
//			
//		}
//				
				
				
				
				
				
//		dao.insertManagement(vo);
//	} 
	
//	@Test
	public void selectByJoinInformationTest() throws Exception {
		List<ManagementVO> mlist = dao.selectByJoinInformation();
		for(ManagementVO mm : mlist) {
			System.out.println(mm);
		}
	}
	
	
	
//	@Test
	public void TitleTest() throws Exception {
		TitleVO tvo = new TitleVO();
		tvo.settName("인턴");
		tdao.inserttitle(tvo);
	} 
	
//	@Test
	public void DepartmentTest() throws Exception {
		DepartmentVO dvo = new DepartmentVO();
		dvo.setdName("제이제이");
		ddao.insertDepartment(dvo);
	} 
	
//	@Test
	public void DepartmentAllTest() throws Exception {
		List<DepartmentVO> dlist = ddao.selectAllDepartment();
		for(DepartmentVO dp : dlist) {
			System.out.println(dp);
			
		}
	}
	
//	@Test
	public void TitleAllTest() throws Exception {
		List<TitleVO> tlist = tdao.selectAllTitle();
		for(TitleVO dp : tlist) {
			System.out.println(dp);
			
		}
	}
	
//	@Test
	public void GoodsAllTest() throws Exception {
		List<GoodsVO> glist = gdao.selectByGoods();
		for(GoodsVO dp : glist) {
			System.out.println(dp);
			
		}
	}
	
	
	
////	@Test
//	public void pageTest() throws Exception {
//		List<BoardVO> list = dao.listPage(1);
//		for(BoardVO vo : list) {
//			System.out.println(vo);
//		}
//	} 
//	
//	@Test
//	public void listCriteriaTest() throws Exception {
//		Criteria cri = new Criteria();
//		cri.setPage(2);
//		cri.setPerPageNum(10);
//		List<BoardVO> list = dao.listCriteria(cri);
//		for(BoardVO vo : list) {
//			System.out.println(vo);
//		}
//	} 
	
	
	
	
	
	
	
}
