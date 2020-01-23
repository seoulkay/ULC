package pix.gdc.com.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.stereotype.Repository;

import pix.gdc.com.vo.TisAccom;
import pix.gdc.com.vo.TisAdmin;
import pix.gdc.com.vo.TisEmployee;
import pix.gdc.com.vo.TisEvent;
import pix.gdc.com.vo.TisFacilities;
import pix.gdc.com.vo.TisFlight;
import pix.gdc.com.vo.TisIti;
import pix.gdc.com.vo.TisItiDetail;
import pix.gdc.com.vo.TisOther;
import pix.gdc.com.vo.TisPolicies;
import pix.gdc.com.vo.TisRequest;
import pix.gdc.com.vo.TisShift;
import pix.gdc.com.vo.TisSupports;
import pix.gdc.com.vo.TisTeam;
import pix.gdc.com.vo.TisTeamWrap;
import pix.gdc.com.vo.TisTransportations;
import pix.gdc.com.vo.TisTrip;
import pix.gdc.com.vo.TisVenue;

@Repository
public class TisDao extends SqlSessionDaoSupport{
	//
	public List<TisEmployee> selectEmployee(){
		return getSqlSession().selectList("TisMapper.selectAllEmployee");
	}
	//비번체크 및 인간 정보 가지고 오기
	public TisEmployee selectEmployeeByAtosId(TisEmployee vo){
		return getSqlSession().selectOne("TisMapper.selectEmployeeByAtosId", vo);
	}
	//비번체크 및 인간 정보 가지고 오기
		public TisEmployee selectEmployeeByAtosName(TisEmployee vo){
			return getSqlSession().selectOne("TisMapper.selectEmployeeByAtosName", vo);
		}
	//아코모 데이션 찾기
	public List<TisAccom> selectAccomByAtosId(TisEmployee vo){
		return getSqlSession().selectList("TisMapper.selectAccomByAtosId", vo);
	}
	//엑티브 이벤트 찾기
	public TisEvent selectActiveEvent(){
		return getSqlSession().selectOne("TisMapper.selectActiveEvent");
	}
	//아코모 데이션 찾기
	public List<TisFlight> selectFlightByAtosId(TisEmployee vo){
		return getSqlSession().selectList("TisMapper.selectFlightByAtosId", vo);
	}
	
	//아코모 데이션 찾기
	public List<TisVenue> selectVenueByAtosId(TisEmployee vo){
		return getSqlSession().selectList("TisMapper.selectVenueByAtosId", vo);
	}
	//어드민 로그인
	public TisAdmin selectAdminByAdminId(TisAdmin vo){
		return getSqlSession().selectOne("TisMapper.selectAdminByAdminId", vo);
	}
	//이벤트 다 가지고 오기
	public List<TisEvent> selectAllEvent(){
		return getSqlSession().selectList("TisMapper.selectAllEvent");
	}
	//
	public int insertEvent(TisEvent vo){
		return getSqlSession().insert("TisMapper.insertEvent", vo);
	}
	//
	public int updateEvent(TisEvent vo){
		return getSqlSession().update("TisMapper.updateEvent", vo);
	}
	//
	public List<TisVenue> selectAllVenue(){
		return getSqlSession().selectList("TisMapper.selectAllVenue");
	}
	//
	public int insertVenue(TisVenue vo){
		return getSqlSession().insert("TisMapper.insertVenue", vo);
	}
	//
	public int updateVenue(TisVenue vo){
		return getSqlSession().update("TisMapper.updateVenue", vo);
	}
	//
	public List<TisFacilities> selectFac(){
		return getSqlSession().selectList("TisMapper.selectFac");
	}
	//
	public int insertFac(TisFacilities vo){
		return getSqlSession().insert("TisMapper.insertFac", vo);
	}
	//
	public int updateFac(TisFacilities vo){
		return getSqlSession().update("TisMapper.updateFac", vo);
	}
	//
	public List<TisPolicies> selectPol(){
		return getSqlSession().selectList("TisMapper.selectPol");
	}
	//
	public int insertPol(TisPolicies vo){
		return getSqlSession().insert("TisMapper.insertPol", vo);
	}
	//
	public int updatePol(TisPolicies vo){
		return getSqlSession().update("TisMapper.updatePol", vo);
	}
	//
	public List<TisTransportations> selectTrs(){
		return getSqlSession().selectList("TisMapper.selectTrs");
	}
	//
	public int insertTrs(TisTransportations vo){
		return getSqlSession().insert("TisMapper.insertTrs", vo);
	}
	//
	public int updateTrs(TisTransportations vo){
		return getSqlSession().update("TisMapper.updateTrs", vo);
	}
	//
	public List<TisSupports> selectSupports(){
		return getSqlSession().selectList("TisMapper.selectSupports");
	}
	//
	public int insertSupports(TisSupports vo){
		return getSqlSession().insert("TisMapper.insertSupports", vo);
	}
	//
	public int updateSupports(TisSupports vo){
		return getSqlSession().update("TisMapper.updateSupports", vo);
	}
	//
	public int insertEmployee(TisEmployee vo){
		return getSqlSession().insert("TisMapper.insertEmployee", vo);
	}
	//
	public int updateEmployee(TisEmployee vo){
		return getSqlSession().update("TisMapper.updateEmployee", vo);
	}
	//인간정보오직 아이디로만
	public TisEmployee selectEmployeeByAtosIdOnly(TisEmployee vo){
		return getSqlSession().selectOne("TisMapper.selectEmployeeByAtosIdOnly", vo);
	}
	//
	public TisEvent selectEventById(TisEvent vo){
		return getSqlSession().selectOne("TisMapper.selectEventById", vo);
	}
	//
	public List<TisVenue> selectHotelVenue(){
		return getSqlSession().selectList("TisMapper.selectHotelVenue");
	}
	//
	public int insertUpdateShift(TisShift vo){
		if(getSqlSession().selectOne("TisMapper.existTisShift", vo).equals(1)){
			getSqlSession().update("TisMapper.updateShift", vo);
			return 1;
		}else{
			getSqlSession().insert("TisMapper.insertShift", vo);
			return 0;
		}
	}
	//
	public List<TisShift> selectShiftBySupportId(int param){
		return getSqlSession().selectList("TisMapper.selectShiftBySupportId", param);
	}
	//selectTripsJoinDesc
	public List<TisTrip> selectTripsJoinDesc(){
		return getSqlSession().selectList("TisMapper.selectTripsJoinDesc");
	}
	//event_id 
	public int insertTrip(TisTrip vo){
		if(getSqlSession().selectOne("TisMapper.existTisTrip", vo).equals(1)){
			return 0;
		}else{
			return getSqlSession().insert("TisMapper.insertTrip", vo);
		}	
	}
	//existAcc
	public int insertUpdateAcc(TisAccom vo){
		if(getSqlSession().selectOne("TisMapper.existAcc", vo).equals(1)){
			getSqlSession().update("TisMapper.updateAcc", vo);
			return 1;
		}else{
			getSqlSession().insert("TisMapper.insertAcc", vo);
			return 0;
		}
	}
	//파라미터로 트립 넘버 찾기
	public TisTrip selectTripByParam(TisTrip vo){
		return getSqlSession().selectOne("TisMapper.selectTripByParam", vo);
	}
	//
	public List<TisIti> selectItiByTrip(int param){
		return getSqlSession().selectList("TisMapper.selectItiByTrip", param);
	}
	//
	public int insertIti(TisIti vo){
		return getSqlSession().insert("TisMapper.insertIti", vo);
	}
	//
	public int updateIti(TisIti vo){
		return getSqlSession().update("TisMapper.updateIti", vo);
	}
	//
	public int insertUpdateOther(TisOther vo){
		if(getSqlSession().selectOne("TisMapper.existTisOther", vo).equals(1)){
			getSqlSession().update("TisMapper.updateTisOther", vo);
			return 1;
		}else{
			getSqlSession().insert("TisMapper.insertTisOther", vo);
			return 0;
		}
	}	
	//
	public TisOther selectTisOtherByEventEmp(TisOther vo){
		return getSqlSession().selectOne("TisMapper.selectTisOtherByEventEmp", vo);
	}
	//
	public TisIti selectTisItiById(int vo){
		return getSqlSession().selectOne("TisMapper.selectTisItiById", vo);
	}
	//
	public List<TisItiDetail> selectItiDetById(int vo){
		return getSqlSession().selectList("TisMapper.selectItiDetById", vo);
	}
	//
	public int insertItiDet(TisItiDetail vo){
		return getSqlSession().insert("TisMapper.insertItiDet", vo);
	}
	//
	public int updateItiDet(TisItiDetail vo){
		return getSqlSession().update("TisMapper.updateItiDet", vo);
	}
	//
	public List<TisTeamWrap> selectTisTeamByEvent(int vo){
		List<TisTeam> list = getSqlSession().selectList("TisMapper.selectTisTeamByEvent", vo);
		List<Integer> key = new ArrayList<Integer>();
		List<TisTeamWrap> wrap = new ArrayList<TisTeamWrap>();
		
		
		for(TisTeam ele : list){
			int id = ele.getSupports_id();
			if(!key.contains(id)){
				key.add(id);
			}
		}
		
		for(Integer ele : key){
			List<TisTeam> tmpList = new ArrayList<TisTeam>();
			TisTeamWrap tmpWrp = new TisTeamWrap();
			for(TisTeam el : list){
				int tmpid = el.getSupports_id();
				if(tmpid == ele){
					tmpList.add(el);
				}
			}
			tmpWrp.setTisTeamList(tmpList);
			wrap.add(tmpWrp);
		}
		
		//테스트 코드
		for(TisTeamWrap ele : wrap){
			System.out.println(ele.getTisTeamList().size());
		}
		
		
		return wrap;
	}
	
	public int insertTisRequest(TisRequest vo){
		return getSqlSession().insert("TisMapper.insertTisRequest", vo);
	}
	
	public List<TisRequest> selectTisRequest(){
		return getSqlSession().selectList("TisMapper.selectTisRequest");
	}
	
	public int updateTisRequestStatus(TisRequest vo){
		return getSqlSession().update("TisMapper.updateTisRequestStatus", vo);
	}
	
	public int updateTisRequest(TisRequest vo){
		return getSqlSession().update("TisMapper.updateTisRequest", vo);
	}

	public TisRequest selectTisRequestById(TisRequest vo){
		return getSqlSession().selectOne("TisMapper.selectTisRequestById", vo);
	}
	
	public int insertTisRequestLog(TisRequest vo){
		return getSqlSession().insert("TisMapper.insertTisRequestLog", vo);
	}
	
	public int selectEmployeeByEmail(String vo){
		return getSqlSession().selectOne("TisMapper.selectEmployeeByEmail", vo);
	}
}


