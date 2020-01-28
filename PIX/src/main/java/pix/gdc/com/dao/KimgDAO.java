package pix.gdc.com.dao;

import java.util.List;

import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.stereotype.Repository;

import pix.gdc.com.vo.KimgCategoryVO;
import pix.gdc.com.vo.KimgCompanyVO;
import pix.gdc.com.vo.KimgDashVO;
import pix.gdc.com.vo.KimgDepartmentVO;
import pix.gdc.com.vo.KimgEventVO;
import pix.gdc.com.vo.KimgItemVO;
import pix.gdc.com.vo.KimgPersonVO;
import pix.gdc.com.vo.KimgPhotoVO;
import pix.gdc.com.vo.KimgProductVO;
import pix.gdc.com.vo.KimgProgressVO;
import pix.gdc.com.vo.KimgSportVO;
import pix.gdc.com.vo.KimgTaskStatusVO;
import pix.gdc.com.vo.KimgTaskTypeVO;
import pix.gdc.com.vo.KimgTaskVO;
import pix.gdc.com.vo.KimgVenueVO;

@Repository
public class KimgDAO extends SqlSessionDaoSupport{
	public KimgPersonVO selectPasswordPerson(KimgPersonVO vo){
		return getSqlSession().selectOne("mapper.selectPasswordPerson", vo);
	}
	
	public List<KimgPersonVO> selectAllPerson(){
		return getSqlSession().selectList("mapper.selectAllPerson");
	}
	
	public List<KimgPersonVO> selectAllPersonSrc(String vo){
		return getSqlSession().selectList("mapper.selectAllPersonSrc", vo);
	}
	
	public List<KimgPersonVO> selectOnePerson(int vo){
		return getSqlSession().selectList("mapper.selectOnePerson", vo);
	}
	
	public int insertPerson(KimgPersonVO vo){
		return getSqlSession().insert("mapper.insertPerson", vo);
	}
	
	public int updatePerson(KimgPersonVO vo){
		return getSqlSession().update("mapper.updatePerson", vo);
	}
	
	public int insertPhoto(KimgPhotoVO vo){
		return getSqlSession().insert("mapper.insertPhoto", vo);
	}
	
	public List<KimgPhotoVO> selectPhotoByParam(KimgPhotoVO vo){
		return getSqlSession().selectList("mapper.selectPhotoByParam", vo);
	}
	
	public List<KimgCompanyVO> selectAllCompany(){
		return getSqlSession().selectList("mapper.selectAllCompany");
	}
	
	public int updatePhotoByRefCodeToZero(KimgPhotoVO vo){
		return getSqlSession().update("mapper.updatePhotoByRefCodeToZero", vo);
	}
	
	public List<KimgItemVO> selectAllItem(){
		return getSqlSession().selectList("mapper.selectAllItem");
	}
	
	public List<KimgProductVO> selectAllProduct(){
		return getSqlSession().selectList("mapper.selectAllProduct");
	}
	public List<KimgCategoryVO> selectAllCategory(){
		return getSqlSession().selectList("mapper.selectAllCategory");
	}
	
	public List<KimgEventVO> selectAllEvent(){
		return getSqlSession().selectList("mapper.selectAllEvent");
	}
	
	public List<KimgSportVO> selectAllSport(){
		return getSqlSession().selectList("mapper.selectAllSport");
	}
	
	public List<KimgDepartmentVO> selectAllDepartment(){
		return getSqlSession().selectList("mapper.selectAllDepartment");
	}
	
	public List<KimgVenueVO> selectAllVenue(){
		return getSqlSession().selectList("mapper.selectAllVenue");
	}
	
	public List<String> selectAllcItmMate(){
		return getSqlSession().selectList("mapper.selectAllcItmMate");
	}
	
	public List<KimgItemVO> selectAllItemSrcPar(KimgItemVO vo){
		vo.setnItmPageTemp(30*(vo.getnItmPage()-1));
		return getSqlSession().selectList("mapper.selectAllItemSrcPar", vo);
	}
	
	public KimgItemVO selectAllItemDetail(int vo){
		 List<KimgItemVO> list = getSqlSession().selectList("mapper.selectAllItemDetail", vo);
		 if(list.size() > 1){
			 System.out.println("Item "+ list.get(0).getcPrdCode() + " has " +list.size() + " entities.");
		 }
		 return list.get(0);
	}
	
	public int insertProduct(KimgProductVO vo){
		return getSqlSession().insert("mapper.insertProduct", vo);
	}
	
	public List<KimgProductVO> selectProductOne(int vo){
		return getSqlSession().selectList("mapper.selectProductOne", vo);
	}
	
	public List<KimgTaskVO> selectTaskOne(int vo){
		return getSqlSession().selectList("mapper.selectTaskOne", vo);
	}
	
	public int updateProduct(KimgProductVO vo){
		return getSqlSession().update("mapper.updateProduct", vo);
	}
	
	public int deletePhoto(Integer vo){
		return getSqlSession().update("mapper.deletePhoto", vo);
	}
	
	public List<KimgProductVO> selectAllProductSrcPar(KimgProductVO vo){
		return getSqlSession().selectList("mapper.selectAllProductSrcPar", vo);
	}
	
	public List<KimgItemVO> selectItemOne(int vo){
		List<KimgItemVO> list = getSqlSession().selectList("mapper.selectItemOne", vo);
//		for(KimgItemVO ele : list){
//			ele.setcItmQty1(""+Integer.parseInt(ele.getcItmQty1()));
//			ele.setcItmQty2(""+Integer.parseInt(ele.getcItmQty2()));
//		}
		 return list;
	}
	
	public int insertItem(KimgItemVO vo){
		return getSqlSession().insert("mapper.insertItem", vo);
	}
	
	public int updateItem(KimgItemVO vo){
		return getSqlSession().update("mapper.updateItem", vo);
	}
	
	public List<KimgTaskStatusVO> selectTaskStatus(){
		return getSqlSession().selectList("mapper.selectTaskStatus");
	}
	
	public List<KimgTaskTypeVO> selectTaskType(){
		return getSqlSession().selectList("mapper.selectTaskType");
	}
	
	public int updateTask(KimgTaskVO vo){
		return getSqlSession().update("mapper.updateTask", vo);
	}
	
	public int insertTask(KimgTaskVO vo){
		return getSqlSession().insert("mapper.insertTask", vo);
	}
	
	public List<KimgTaskVO> selectTask(int vo){
		return getSqlSession().selectList("mapper.selectTask", vo);
	}
	
	public List<KimgTaskVO> selectAllTask(){
		return getSqlSession().selectList("mapper.selectAllTask");
	}
	
	public KimgDashVO selectLateDash(){
		return getSqlSession().selectOne("mapper.selectLateDash");
	}
	
	public List<KimgTaskVO> selectIssue(){
		return getSqlSession().selectList("mapper.selectIssue");
	}
	
	public List<KimgTaskVO> selectIssueSrcPar(KimgTaskVO vo){
		return getSqlSession().selectList("mapper.selectIssueSrcPar", vo);
	}
	public void insertDash(){
		getSqlSession().insert("mapper.insertDash");
	}
	public List<KimgProgressVO> selectProgress(){
		return getSqlSession().selectList("mapper.selectProgress");
	}
	public int selectAllItemSrcParCnt(KimgItemVO vo){
		return getSqlSession().selectOne("mapper.selectAllItemSrcParCnt", vo);
	}
	public List<String> selectVenueDist(String vo){
		return getSqlSession().selectList("mapper.selectVenueDist", vo);
	}
}