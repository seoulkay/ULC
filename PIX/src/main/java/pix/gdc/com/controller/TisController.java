package pix.gdc.com.controller;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import pix.gdc.com.dao.ApplicationMailer;
import pix.gdc.com.dao.RestServiceTis;
import pix.gdc.com.dao.TisDao;
import pix.gdc.com.vo.TisAccom;
import pix.gdc.com.vo.TisAdmin;
import pix.gdc.com.vo.TisEmployee;
import pix.gdc.com.vo.TisEmployeeList;
import pix.gdc.com.vo.TisEvent;
import pix.gdc.com.vo.TisFacilities;
import pix.gdc.com.vo.TisFlight;
import pix.gdc.com.vo.TisIti;
import pix.gdc.com.vo.TisItiDetail;
import pix.gdc.com.vo.TisOther;
import pix.gdc.com.vo.TisPolicies;
import pix.gdc.com.vo.TisRequest;
import pix.gdc.com.vo.TisShift;
import pix.gdc.com.vo.TisShiftList;
import pix.gdc.com.vo.TisSupports;
import pix.gdc.com.vo.TisTransportations;
import pix.gdc.com.vo.TisTrip;
import pix.gdc.com.vo.TisVenue;

@Controller
public class TisController {
	@Autowired
	TisDao dao;
	
	@Autowired
	RestServiceTis restService;
	
		
	@RequestMapping(value = "tisHome", method = RequestMethod.GET)
	public String tisLogin(){
		return "tis/home";
	}
	
	@RequestMapping(value = "admin", method = RequestMethod.GET)
	public String tisLoginadmin(){
		return "tis/homeAdmin";
	}
	
	@RequestMapping(value = "about/team", method = RequestMethod.GET)
	public String tisaboutteam(Model model){
		
		TisEvent te = dao.selectActiveEvent();
		
		model.addAttribute("ttw", dao.selectTisTeamByEvent(te.getId()));
		
		return "tis/about/team";
	}
	
	@RequestMapping(value = "about/emer", method = RequestMethod.GET)
	public String tisaboutemer(){
		return "tis/about/emer";
	}
	
	@RequestMapping(value = "about/faq", method = RequestMethod.GET)
	public String tisaboutfaq(){
		return "tis/about/faq";
	}
	
	@RequestMapping(value = "game/host", method = RequestMethod.GET)
	public String tisgamehost(){
		return "tis/game/host";
	}
	
	@RequestMapping(value = "game/oly", method = RequestMethod.GET)
	public String tisgameoly(){
		return "tis/game/oly";
	}
	
	@RequestMapping(value = "game/par", method = RequestMethod.GET)
	public String tisgamepar(){
		return "tis/game/par";
	}
	
	@RequestMapping(value = "game/venue", method = RequestMethod.GET)
	public String tisgamevenue(){
		return "tis/game/venue";
	}
	
	@RequestMapping(value = "game/attraction", method = RequestMethod.GET)
	public String tisgamatt(){
		return "tis/game/attraction";
	}
	
	@RequestMapping(value = "game/restaurant", method = RequestMethod.GET)
	public String tisgamres(){
		return "tis/game/restaurant";
	}
	
	@RequestMapping(value = "home", method = RequestMethod.GET)
	public String tishome(){
		return "tis/home";
	}
	
	
	@RequestMapping(value = "request", method = RequestMethod.GET)
	public String tisRequest(Model model){
		List<TisEvent> te = dao.selectAllEvent();
		List<TisVenue> tv = dao.selectAllVenue();
		
		//only c_venue and n_venue
		List<TisVenue> tempTv = new ArrayList<TisVenue>();
		for(TisVenue ele : tv){
			if(ele.getVenue_type().equals("c_venue") || ele.getVenue_type().equals("n_venue")){
				tempTv.add(ele);
			}
		}
		
		List<TisEmployee> temp = dao.selectEmployee();
		
		model.addAttribute("tv", tempTv);
		model.addAttribute("te", te);
		model.addAttribute("temp", temp);
		return "tis/request";
	}
	
	@RequestMapping(value = "requestFormAction", method = RequestMethod.POST)
	public String tisRequestFormAction(Model model, @ModelAttribute("vo")TisRequest vo){
		dao.insertTisRequest(vo);
		dao.insertTisRequestLog(vo);
		
		/**
		 * 공격 당해서 이메일 뺀다.
		 */
//			//이메일용 이벤트 네임 구하기
//			TisEvent te = new TisEvent();
//			te.setId(vo.getReq_purpose());
//			te = dao.selectEventById(te);
//			vo.setEvent_name(te.getEvent_name());
//			
//			//이메일용 로컬콘텍 네임 구하기
//			TisEmployee tem = new TisEmployee();
//			tem.setId(vo.getReq_contact());
//			tem = dao.selectEmployeeByAtosIdOnly(tem);
//			vo.setLocal_contact(tem.getFirst_name()+" "+tem.getLast_name());
//			vo.setLocal_contact_email(tem.getEmail());
//			
//			//이메일용 베뉴이름 구하기
//			List<TisVenue> venueList = dao.selectAllVenue();
//			String venueName = "";
//			
//			try{
//			String[] venueIds = vo.getReq_venue().split(",");
//			
//			for(String ele : venueIds){
//				for(TisVenue elee : venueList){
//					if(Integer.parseInt(ele) == elee.getId()){
//						venueName = venueName + " " + elee.getVenue_name();
//					}
//				}
//			}
//			vo.setVenue_name(venueName);
//			}catch(Exception e){
//				e.printStackTrace();
//			}
//			
//			sendTisRequestEmail(vo);
		/**
		 * 공격 당해서 이메일 뺀다. 2017년 10월 26일
		 */
		
		return "tis/land";
	}
	
	public void sendTisRequestEmail(TisRequest vo){
		final TisRequest msg  = vo;
		ExecutorService emailExecutor = Executors.newSingleThreadExecutor();
		        emailExecutor.execute(new Runnable() {
		            @Override
		            public void run() {
		                try {
		                	ApplicationMailer am = new ApplicationMailer();
		            		am.sendGmail(msg);
		                } catch (Exception e) {
		                   e.printStackTrace();
		                }
		            }
		        });
		        emailExecutor.shutdown();
	}
	
	
	@RequestMapping(value = "infoAdmin", method = RequestMethod.POST)
	public String tisLoginadminAdmin(@ModelAttribute("vo") TisAdmin vo, Model model, HttpSession session){
		try{
		TisAdmin em = dao.selectAdminByAdminId(vo);
			if(em.getAdmin_pass().equals(vo.getAdmin_pass())){
				
				session.setAttribute("user_name", em.getAdmin_name());
				
				List<TisEvent> te = dao.selectAllEvent();
				List<TisVenue> tv = dao.selectAllVenue();
				List<TisFacilities> tfac = dao.selectFac();
				List<TisPolicies> tpol = dao.selectPol();
				List<TisTransportations> ttrs = dao.selectTrs();
				List<TisSupports> tsup = dao.selectSupports();
				List<TisEmployee> temp = dao.selectEmployee();
				
				model.addAttribute("te", te);
				model.addAttribute("tv", tv);
				model.addAttribute("tfac", tfac);
				model.addAttribute("tpol", tpol);
				model.addAttribute("ttrs", ttrs);
				model.addAttribute("tsup", tsup);
				model.addAttribute("temp", temp);
				return "tis/infoAdmin";
			}else{
				//비번 틀렸어요. 
				return "redirect:/admin";
			}
		}catch(Exception e){
			e.printStackTrace();
			return "redirect:/admin";
		}
	}
	
	@RequestMapping(value = "infoTrip", method = RequestMethod.GET)
	public String tisinfoTrip(Model model, HttpSession session){
		try{
			if(session.getAttribute("user_name").equals("")){
				return "redirect:/admin";
			}else{
				List<TisEvent> te = dao.selectAllEvent();
				List<TisVenue> tv = dao.selectAllVenue();
				List<TisFacilities> tfac = dao.selectFac();
				List<TisPolicies> tpol = dao.selectPol();
				List<TisTransportations> ttrs = dao.selectTrs();
				List<TisSupports> tsup = dao.selectSupports();
				List<TisEmployee> temp = dao.selectEmployee();
				
				List<TisTrip> ttr = dao.selectTripsJoinDesc();
				
				model.addAttribute("te", te);
				model.addAttribute("tv", tv);
				model.addAttribute("tfac", tfac);
				model.addAttribute("tpol", tpol);
				model.addAttribute("ttrs", ttrs);
				model.addAttribute("tsup", tsup);
				model.addAttribute("temp", temp);
				
				model.addAttribute("ttr", ttr);
				return "tis/infoTrip";
			}
		}catch(Exception e){
			e.printStackTrace();
			return "redirect:/admin";
		}
		
	}
	
	@RequestMapping(value = "bookings", method = RequestMethod.GET)
	public String bookings(Model model, HttpSession session){
		try{
			if(session.getAttribute("user_name").equals("")){
				return "redirect:/admin";
			}else{
				List<TisRequest> req = dao.selectTisRequest();
				List<TisEvent> te = dao.selectAllEvent();
				List<TisVenue> tv = dao.selectAllVenue();
				
				//only c_venue and n_venue
				List<TisVenue> tempTv = new ArrayList<TisVenue>();
				for(TisVenue ele : tv){
					if(ele.getVenue_type().equals("c_venue") || ele.getVenue_type().equals("n_venue")){
						tempTv.add(ele);
					}
				}
				
				List<TisEmployee> temp = dao.selectEmployee();
				
				model.addAttribute("tv", tempTv);
				model.addAttribute("te", te);
				model.addAttribute("temp", temp);
				model.addAttribute("req", req);
				return "tis/bookings";
			}
		}catch(Exception e){
			e.printStackTrace();
			return "redirect:/admin";
		}
		
	}
	@RequestMapping(value = "infoTripForm", method = RequestMethod.GET)
	public String tisinfoTripForm(Model model, HttpSession session, 
			 @RequestParam("event_id")int event_id,
			 @RequestParam("emp_id")int emp_id){
		try{
			if(session.getAttribute("user_name").equals("")){
				return "redirect:/admin";
			}else{
				List<TisEvent> te = dao.selectAllEvent();
				List<TisVenue> tv = dao.selectAllVenue();
				List<TisVenue> thv = dao.selectHotelVenue();
				List<TisFacilities> tfac = dao.selectFac();
				List<TisPolicies> tpol = dao.selectPol();
				List<TisTransportations> ttrs = dao.selectTrs();
				List<TisSupports> tsup = dao.selectSupports();
				List<TisEmployee> temp = dao.selectEmployee();
				
			
				TisTrip tripinfo = new TisTrip();
				tripinfo.setEmp_id(emp_id);
				tripinfo.setEvent_id(event_id);
				tripinfo = dao.selectTripByParam(tripinfo);
				
				//여정 가지고 오기
				List<TisIti> ti = dao.selectItiByTrip(tripinfo.getId());
				
				TisEmployee em = new TisEmployee();
				em.setId(emp_id);
				em.setEvent_id(event_id);
				List<TisAccom> tacclist = dao.selectAccomByAtosId(em);
				TisAccom tacc = new TisAccom();
				try{
				tacc = tacclist.get(0);
				}catch(Exception e){
					//숙박 리스트가 없으면 아무것도 안함
				}
				TisOther to = new TisOther();
				to.setEmp_id(tripinfo.getEmp_id());
				to.setEvent_id(tripinfo.getEvent_id());
				to = dao.selectTisOtherByEventEmp(to); 
				
				model.addAttribute("te", te);
				model.addAttribute("tv", tv);
				model.addAttribute("thv", thv);
				model.addAttribute("tfac", tfac);
				model.addAttribute("tpol", tpol);
				model.addAttribute("ttrs", ttrs);
				model.addAttribute("tsup", tsup);
				model.addAttribute("temp", temp);
				
				model.addAttribute("tripinfo", tripinfo);
				model.addAttribute("tacc", tacc);
				model.addAttribute("ti", ti);
				model.addAttribute("to", to);
				
				return "tis/infoTripForm";
			}
		}catch(Exception e){
			e.printStackTrace();
			return "redirect:/admin";
		}
		
	}
	
	@RequestMapping(value = "infoShift", method = RequestMethod.GET)
	public String infoShift(Model model, HttpSession session){
		try{
			if(session.getAttribute("user_name").equals("")){
				return "redirect:/admin";
			}else{
				List<TisEvent> te = dao.selectAllEvent();
				List<TisVenue> tv = dao.selectAllVenue();
				List<TisFacilities> tfac = dao.selectFac();
				List<TisPolicies> tpol = dao.selectPol();
				List<TisTransportations> ttrs = dao.selectTrs();
				List<TisSupports> tsup = dao.selectSupports();
				List<TisEmployee> temp = dao.selectEmployee();
				
				model.addAttribute("te", te);
				model.addAttribute("tv", tv);
				model.addAttribute("tfac", tfac);
				model.addAttribute("tpol", tpol);
				model.addAttribute("ttrs", ttrs);
				model.addAttribute("tsup", tsup);
				model.addAttribute("temp", temp);
				return "tis/infoShift";
			}
		}catch(Exception e){
			e.printStackTrace();
			return "redirect:/admin";
		}
		
	}
	
	@RequestMapping(value = "infoTripcodes", method = RequestMethod.GET)
	public String infoTripcodes(Model model, HttpSession session){
		try{
			if(session.getAttribute("user_name").equals("")){
				return "redirect:/admin";
			}else{
				List<TisEvent> te = dao.selectAllEvent();
				List<TisVenue> tv = dao.selectAllVenue();
				List<TisFacilities> tfac = dao.selectFac();
				List<TisPolicies> tpol = dao.selectPol();
				List<TisTransportations> ttrs = dao.selectTrs();
				List<TisSupports> tsup = dao.selectSupports();
				
				model.addAttribute("te", te);
				model.addAttribute("tv", tv);
				model.addAttribute("tfac", tfac);
				model.addAttribute("tpol", tpol);
				model.addAttribute("ttrs", ttrs);
				model.addAttribute("tsup", tsup);
				return "tis/infoTripcodes";
			}
		}catch(Exception e){
			e.printStackTrace();
			return "redirect:/admin";
		}
		
	}
	
	@RequestMapping(value = "infoAdmin", method = RequestMethod.GET)
	public String tisLoginadminAdminGet(Model model, HttpSession session){
		try{
			if(session.getAttribute("user_name").equals("")){
				return "redirect:/admin";
			}else{

				List<TisEmployee> temp = dao.selectEmployee();
				
				model.addAttribute("temp", temp);
				return "tis/infoAdmin";
			}
		}catch(Exception e){
			e.printStackTrace();
			return "redirect:/admin";
		}
		
	}
	
	@RequestMapping(value = "TripCodesForm", method = RequestMethod.POST)
	public String TripCodesFormInsert(@ModelAttribute("vo") TisEvent vo){
		dao.insertEvent(vo);
		return "redirect:infoTripcodes";
	}
	@RequestMapping(value = "TripCodesUpdateForm", method = RequestMethod.POST)
	public String TripCodesUpdateForm(@ModelAttribute("vo") TisEvent vo){
		dao.updateEvent(vo);
		return "redirect:infoTripcodes";
	}
	@RequestMapping(value = "LocationsForm", method = RequestMethod.POST)
	public String locationsFormInsert(@ModelAttribute("vo") TisVenue vo){
		dao.insertVenue(vo);
		return "redirect:infoTripcodes";
	}
	@RequestMapping(value = "LocationsUpdateForm", method = RequestMethod.POST)
	public String locationsUpdateForm(@ModelAttribute("vo") TisVenue vo){
		dao.updateVenue(vo);
		return "redirect:infoTripcodes";
	}
	@RequestMapping(value = "FacForm", method = RequestMethod.POST)
	public String FacFormInsert(@ModelAttribute("vo") TisFacilities vo){
		dao.insertFac(vo);
		return "redirect:infoTripcodes";
	}
	@RequestMapping(value = "FacUpdateForm", method = RequestMethod.POST)
	public String FacUpdateForm(@ModelAttribute("vo") TisFacilities vo){
		dao.updateFac(vo);
		return "redirect:infoTripcodes";
	}
	@RequestMapping(value = "PolForm", method = RequestMethod.POST)
	public String PolFormInsert(@ModelAttribute("vo") TisPolicies vo){
		dao.insertPol(vo);
		return "redirect:infoTripcodes";
	}
	@RequestMapping(value = "PolUpdateForm", method = RequestMethod.POST)
	public String PolUpdateForm(@ModelAttribute("vo") TisPolicies vo){
		dao.updatePol(vo);
		return "redirect:infoTripcodes";
	}
	@RequestMapping(value = "TrsForm", method = RequestMethod.POST)
	public String TrsFormInsert(@ModelAttribute("vo") TisTransportations vo){
		dao.insertTrs(vo);
		return "redirect:infoTripcodes";
	}
	@RequestMapping(value = "TrsUpdateForm", method = RequestMethod.POST)
	public String TrsUpdateForm(@ModelAttribute("vo") TisTransportations vo){
		dao.updateTrs(vo);
		return "redirect:infoTripcodes";
	}
	@RequestMapping(value = "SupForm", method = RequestMethod.POST)
	public String SupFormInsert(@ModelAttribute("vo") TisSupports vo){
		dao.insertSupports(vo);
		return "redirect:infoShift";
	}
	@RequestMapping(value = "SupUpdateForm", method = RequestMethod.POST)
	public String SupUpdateForm(@ModelAttribute("vo") TisSupports vo){
		dao.updateSupports(vo);
		return "redirect:infoShift";
	}
	@RequestMapping(value = "ProForm", method = RequestMethod.POST)
	public String ProFormInsert(@ModelAttribute("vo") TisEmployee vo){
		dao.insertEmployee(vo);
		return "redirect:infoAdmin";
	}
	@RequestMapping(value = "ProUpdateForm", method = RequestMethod.POST)
	public String ProUpdateForm(@ModelAttribute("vo") TisEmployee vo){
		dao.updateEmployee(vo);
		return "redirect:infoAdmin";
	}
	@RequestMapping(value = "tripForm", method = RequestMethod.POST)
	public String tripFormInsert(@ModelAttribute("vo") TisTrip vo){
		dao.insertTrip(vo);
		return "redirect:infoTrip";
	}
	@RequestMapping(value = "ItiForm", method = RequestMethod.POST)
	public String ItiForm(@ModelAttribute("vo") TisIti vo,
			@RequestParam("event_id")String event_id, 
			@RequestParam("emp_id")String emp_id,
			@RequestParam("iti_img_file")MultipartFile iti_img_file){
		
		try{
			if(!iti_img_file.isEmpty()){
				try{
					String[] fileInfo = restService.writeFileToServer(iti_img_file);
					vo.setIti_img(fileInfo[0]);
					System.out.println("File uploaded");
				}catch(Exception e){
					System.out.println("Fail to upload a file." + e.getMessage());
				}
			}
		}catch(Exception e){
			System.out.println("Fail to upload a file." + e.getMessage());
		}
		
		dao.insertIti(vo);
		return "redirect:infoTripForm?event_id="+event_id+"&emp_id="+emp_id;
	}
	@RequestMapping(value = "ItiUpdateForm", method = RequestMethod.POST)
	public String ItiUpdateForm(@ModelAttribute("vo") TisIti vo, 
			@RequestParam("event_id")String event_id, 
			@RequestParam("emp_id")String emp_id,
			@RequestParam("iti_img_file")MultipartFile iti_img_file){

			try{
				if(!iti_img_file.isEmpty()){
					try{
						String[] fileInfo = restService.writeFileToServer(iti_img_file);
						vo.setIti_img(fileInfo[0]);
						System.out.println("File uploaded");
					}catch(Exception e){
						System.out.println("Fail to upload a file." + e.getMessage());
					}
				}
			}catch(Exception e){
				System.out.println("Fail to upload a file." + e.getMessage());
			}
			
		dao.updateIti(vo);
		return "redirect:infoTripForm?event_id="+event_id+"&emp_id="+emp_id;
	}
	@RequestMapping(value = "itiDetForm", method = RequestMethod.POST)
	public String ItiDetForm(@ModelAttribute("vo") TisItiDetail vo){
		dao.insertItiDet(vo);
		return "redirect:itiForm?id="+vo.getIti_id();
	}
	@RequestMapping(value = "itiDetUpdateForm", method = RequestMethod.POST)
	public String ItiDetUpdateForm(@ModelAttribute("vo") TisItiDetail vo){
		dao.updateItiDet(vo);
		return "redirect:itiForm?id="+vo.getIti_id();
	}
	@RequestMapping(value = "OtherForm", method = RequestMethod.POST)
	public String OtherForm(@ModelAttribute("vo") TisOther vo){
		dao.insertUpdateOther(vo);
		return "redirect:infoTripForm?event_id="+vo.getEvent_id()+"&emp_id="+vo.getEmp_id();
	}
	
	@RequestMapping(value = "signout", method = RequestMethod.GET)
	public String signout(HttpSession session){
		session.invalidate();
		return "redirect:/";
	}
	
	@RequestMapping(value = "info", method = RequestMethod.POST)
	public String tisInfo(@RequestParam("id")String id, @RequestParam("pass")String pass, Model model, HttpSession session){
		
		session.setAttribute("uid", id);
		session.setAttribute("upw", pass);
		
		
		//유저 알아내기 부분.
		TisEvent te = dao.selectActiveEvent();
		TisEmployee cr = new TisEmployee();
		
		String[] name = id.split("\\.");
		
		try{
		cr.setEvent_id(te.getId());
		cr.setFirst_name(name[0]);
		cr.setLast_name(name[1]);
		}catch(Exception e){
			
		}
		
		
		try{
			
		TisEmployee em = dao.selectEmployeeByAtosName(cr);
		TisTrip tt = new TisTrip();
		
		em.setEvent_id(te.getId());
		
		tt.setEmp_id(em.getId());
		tt.setEvent_id(em.getEvent_id());
		tt = dao.selectTripByParam(tt);
		
		
		
		
		if(em.getPin().equals(pass)){
			
			List<TisAccom> ta = dao.selectAccomByAtosId(em);
			//tf 안쓸꺼다.
			List<TisFlight> tf = dao.selectFlightByAtosId(em);
			List<TisVenue> tv = dao.selectVenueByAtosId(em);
			List<TisFacilities> tfac = dao.selectFac();
			List<TisPolicies> tpol = dao.selectPol();
			
			try{
			List<TisIti> tis = dao.selectItiByTrip(tt.getId());
			for(TisIti ele : tis){
				List<TisItiDetail> detTemp = new ArrayList<TisItiDetail>();
				detTemp = dao.selectItiDetById(ele.getId());
				ele.setItiDetail(detTemp);
			}
			model.addAttribute("tis", tis);
			}catch(Exception e){
			 System.out.println("No Itinery");	
			}
			
			TisOther to = new TisOther();
			to.setEmp_id(em.getId());
			to.setEvent_id(em.getEvent_id());
			to = dao.selectTisOtherByEventEmp(to);
			
			model.addAttribute("em", em);
			model.addAttribute("ta", ta);
			model.addAttribute("tf", tf);
			model.addAttribute("tv", tv);
			model.addAttribute("te", te);
			model.addAttribute("te", te);
			model.addAttribute("tfac", tfac);
			model.addAttribute("tpol", tpol);
			model.addAttribute("to", to);

			model.addAttribute("ttw", dao.selectTisTeamByEvent(te.getId()));
			
			
			return "tis/info";
		}else{
			System.out.println("Wrong Password");
			model.addAttribute("err", "Wrong password or user name.");
			return "tis/home";
		}
		}catch(Exception e){
			e.printStackTrace();
			model.addAttribute("err", "Wrong password or user name!");
			return "tis/home";
		}
	}
	
	
	@RequestMapping(value = "info", method = RequestMethod.GET)
	public String tisInfo(Model model, HttpSession session){
		
		try{
			
			String id = "";
			String pass = "";
			
			id = session.getAttribute("uid").toString();
			pass = session.getAttribute("upw").toString();
			
			//유저 알아내기 부분.
			TisEvent te = dao.selectActiveEvent();
			TisEmployee cr = new TisEmployee();
			
			String[] name = id.split("\\.");
			
			try{
			cr.setEvent_id(te.getId());
			cr.setFirst_name(name[0]);
			cr.setLast_name(name[1]);
			}catch(Exception e){
				
			}
			
			
		TisEmployee em = dao.selectEmployeeByAtosName(cr);
		TisTrip tt = new TisTrip();
		
		em.setEvent_id(te.getId());
		
		tt.setEmp_id(em.getId());
		tt.setEvent_id(em.getEvent_id());
		tt = dao.selectTripByParam(tt);
		
		
		
		
		if(em.getPin().equals(pass)){
			
			List<TisAccom> ta = dao.selectAccomByAtosId(em);
			//tf 안쓸꺼다.
			List<TisFlight> tf = dao.selectFlightByAtosId(em);
			List<TisVenue> tv = dao.selectVenueByAtosId(em);
			List<TisFacilities> tfac = dao.selectFac();
			List<TisPolicies> tpol = dao.selectPol();
			
			try{
			List<TisIti> tis = dao.selectItiByTrip(tt.getId());
			for(TisIti ele : tis){
				List<TisItiDetail> detTemp = new ArrayList<TisItiDetail>();
				detTemp = dao.selectItiDetById(ele.getId());
				ele.setItiDetail(detTemp);
			}
			model.addAttribute("tis", tis);
			}catch(Exception e){
			 System.out.println("No Itinery");	
			}
			
			TisOther to = new TisOther();
			to.setEmp_id(em.getId());
			to.setEvent_id(em.getEvent_id());
			to = dao.selectTisOtherByEventEmp(to);
			
			model.addAttribute("em", em);
			model.addAttribute("ta", ta);
			model.addAttribute("tf", tf);
			model.addAttribute("tv", tv);
			model.addAttribute("te", te);
			model.addAttribute("te", te);
			model.addAttribute("tfac", tfac);
			model.addAttribute("tpol", tpol);
			model.addAttribute("to", to);

			model.addAttribute("ttw", dao.selectTisTeamByEvent(te.getId()));
			
			
			return "tis/info";
		}else{
			System.out.println("Wrong Password");
			model.addAttribute("err", "Wrong password or user name.");
			return "tis/home";
		}
		}catch(Exception e){
			e.printStackTrace();
			model.addAttribute("err", "Wrong password or user name!");
			return "tis/home";
		}
	}
	
	
	
	@RequestMapping(value = "getEmp/{id}", method = RequestMethod.POST)
	public @ResponseBody TisEmployee getEmp(@PathVariable("id")int id){
		TisEmployee vo = new TisEmployee();
		vo.setId(id);
		return dao.selectEmployeeByAtosIdOnly(vo);
	}
	@RequestMapping(value = "getEvent/{id}", method = RequestMethod.POST)
	public @ResponseBody TisEvent getEvent(@PathVariable("id")int id){
		TisEvent vo = new TisEvent();
		vo.setId(id);
		return dao.selectEventById(vo);
	}
	@RequestMapping(value = "getShift/{id}", method = {RequestMethod.POST, RequestMethod.GET})
	public @ResponseBody List<TisShift> getShift(@PathVariable("id")int id){
		return dao.selectShiftBySupportId(id);
	}
	@RequestMapping(value = "TripAccForm", method = RequestMethod.POST)
	public String  TripAccForm(@ModelAttribute("TisAccom") TisAccom vo, 
			@RequestParam("event_id")String event_id, 
			@RequestParam("emp_id")String emp_id
			){
		//return dao.selectShiftBySupportId(id);

		vo.setAcc_fac(arrayToString(vo.getAcc_fac_list()));
		vo.setAcc_pol(arrayToString(vo.getAcc_pol_list()));
		dao.insertUpdateAcc(vo);
		
		return "redirect:infoTripForm?event_id="+event_id+"&emp_id="+emp_id;
	}
	
	public String arrayToString(String[] str){
		String result = "";
		try{
			for(int i = 0 ; i < str.length; i++){
				result += " "+str[i]+",";
			}
		}catch(Exception e){
			
		}
		return result;
	}
	
	
	@RequestMapping(value = "save", method = RequestMethod.POST)
	public String save(@ModelAttribute("TisEmployeeList") TisEmployeeList vo) {
		System.out.println(vo);
		System.out.println(vo.getEmployees());
		List<TisEmployee> contacts = vo.getEmployees();
		
		if(null != contacts && contacts.size() > 0) {
			//ContactController.contacts = contacts;
			for (TisEmployee contact : contacts) {
				System.out.printf("%s \t %s \n", contact.getFirst_name(), contact.getLast_name());
			}
		}
		
		return "redirect:infoShift";
	}
	@RequestMapping(value = "SupAssForm", method = RequestMethod.POST)
	public String SupAssForm(@ModelAttribute("TisShiftList") TisShiftList vo) {
		System.out.println(vo);
		List<TisShift> shifts = vo.getShifts();
		
		if(null != shifts && shifts.size() > 0) {
			//ContactController.contacts = contacts;
			for (TisShift shift : shifts) {
				System.out.printf("%s \t %s \n", shift.getGroup_name(), shift.getEmp_id());
				dao.insertUpdateShift(shift);
			}
		}
		
		return "redirect:infoShift";
	}
	
//	@InitBinder
//	public void initBinder(final WebDataBinder binder){
//	  final SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd hh:mm"); 
//	  binder.registerCustomEditor(Date.class, new CustomDateEditor(dateFormat, true));
//	}
	
	@RequestMapping(value="itiForm", method=RequestMethod.GET)
	public String itiForm(Model modal, @RequestParam("id")int id){
		
		TisIti ti = dao.selectTisItiById(id);
		List<TisItiDetail> tidl = dao.selectItiDetById(id);
		List<TisTransportations> temp = dao.selectTrs();
		System.out.println("여기 온다.");
		
		modal.addAttribute("ti", ti);
		modal.addAttribute("tidl", tidl);
		modal.addAttribute("temp", temp);
		return "tis/itiForm";
	}
	
	@RequestMapping(value = "get/venue", method = {RequestMethod.GET, RequestMethod.POST})
	public @ResponseBody List<TisVenue> getVenue(){
		List<TisVenue> ufoGo = dao.selectAllVenue();
	
		return ufoGo;
	}
	
	@RequestMapping(value = "bookings/getRequest/{id}", method = RequestMethod.POST)
	public @ResponseBody TisRequest getRequest(@PathVariable("id")int id){
		TisRequest vo = new TisRequest();
		vo.setId(id);
		vo = dao.selectTisRequestById(vo);
		
		DateFormat df = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm");

		vo.setArrive_stmp_str(df.format(vo.getArrive_stmp()));
		vo.setLeave_stmp_str(df.format(vo.getLeave_stmp()));
		
		return vo;
	}
	
	@RequestMapping(value = "changeStatus/{id}", method = RequestMethod.GET)
	public String bookingsChangeStatus(Model model, HttpSession session, @PathVariable("id")int id){
		try{
			if(session.getAttribute("user_name").equals("")){
				return "redirect:/admin";
			}else{
				System.out.println(session.getAttribute("user_name").toString());
				String modby = session.getAttribute("user_name").toString();
				
				TisRequest tisr = new TisRequest();
				tisr.setId(id);
				tisr = dao.selectTisRequestById(tisr);
				
				if(tisr.getReq_status().equals("Requested")){
					tisr.setReq_status("Confirmed");
				}else if(tisr.getReq_status().equals("Confirmed")){
					tisr.setReq_status("Cancelled");
				}else if(tisr.getReq_status().equals("Cancelled")){
					tisr.setReq_status("Confirmed");
				}
				
				tisr.setMod_by(modby);
				tisr.setId_log(tisr.getId());
				
				dao.updateTisRequestStatus(tisr);
				dao.insertTisRequestLog(tisr);
				
				return "redirect:/bookings";
			}
		}catch(Exception e){
			e.printStackTrace();
			return "redirect:/admin";
		}
	}
	
	@RequestMapping(value = "toTripForm", method = RequestMethod.GET)
	public String toTripForm(Model model, HttpSession session, @RequestParam("event")int event, @RequestParam("email")String email, RedirectAttributes redir){
		try{
			if(session.getAttribute("user_name").equals("")){
				return "redirect:/admin";
			}else{
					System.out.println(event+email);
					int emp = 0;

					try{
					emp = dao.selectEmployeeByEmail(email);
					
					TisTrip tripinfo = new TisTrip();
					tripinfo.setEmp_id(emp);
					tripinfo.setEvent_id(event);
					tripinfo = dao.selectTripByParam(tripinfo);
					
					System.out.println(tripinfo.getEmp_id()+tripinfo.getId());
					
					}catch(NullPointerException e){
						
						String js = "<script>$('select[name=emp_id]').val("+emp+");$('select[name=event_id]').val("+event+");$('#AddTripForm').modal('show');</script>";
						
						redir.addFlashAttribute("js",js);
					
						return "redirect:/infoTrip";
					}
					
					
				
				return "redirect:/infoTripForm?event_id="+event+"&emp_id="+emp;
			}
		}catch(Exception e){
			e.printStackTrace();
			return "redirect:/admin";
		}
	}
	
	@RequestMapping(value = "requestUpdate", method = RequestMethod.POST)
	public String requestUpdate(Model model, @ModelAttribute("vo") TisRequest vo, HttpSession session){
		try{
			if(session.getAttribute("user_name").equals("")){
				return "redirect:/admin";
			}else{
					vo.setMod_by(session.getAttribute("user_name").toString());
					dao.updateTisRequest(vo);
					vo.setId_log(vo.getId());
					dao.insertTisRequestLog(vo);
				return "redirect:/bookings";
			}
		}catch(Exception e){
			e.printStackTrace();
			return "redirect:/admin";
		}
	}
	//dao.insertTisRequestLog(tisr);
	
}