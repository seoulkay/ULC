package pix.gdc.com.controller;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.commons.CommonsMultipartResolver;

import pix.gdc.com.dao.FestDAO;
import pix.gdc.com.service.RestService;
import pix.gdc.com.vo.FestAnswerVO;
import pix.gdc.com.vo.FestNewsLetterEmail;
import pix.gdc.com.vo.FestOption;
import pix.gdc.com.vo.FestQuesListVO;
import pix.gdc.com.vo.FestSnsLog;
import pix.gdc.com.vo.FestUfo;
import pix.gdc.com.vo.FestUfoNotice;
import pix.gdc.com.vo.UfoGoRecord;
import pix.gdc.com.vo.UfoGoVO;
import pix.gdc.com.vo.UfoShare;

@Controller
public class UfoController {
	//public String para = "dano";
	//public int eventIdx = 1;
	
	@Autowired
	RestService restService;
	@Autowired
	FestDAO dao;
	
	@RequestMapping(value = "ufo/{para}/about", method = RequestMethod.GET)
	public String about(@PathVariable("para")String para){
		return "ufo/about";
	}
	@RequestMapping(value = "ufo/{para}/blog", method = RequestMethod.GET)
	public String blog(Model model, @PathVariable("para")String para, HttpSession session){
		
		List<FestUfoNotice> noticeList = dao.SelectUfoNotice(para);
		FestUfo ufo = dao.SelectUfoByPara(para);
		session.setAttribute("eventMenu", ufo.getMenu());
		session.setAttribute("eventPara", para);
		
		
		List<FestUfoNotice> danoNotice = new ArrayList<FestUfoNotice>();
		List<FestUfoNotice> mediaNotice = new ArrayList<FestUfoNotice>();
		List<FestUfoNotice> newsLetterNotice = new ArrayList<FestUfoNotice>();
		List<FestUfoNotice> faqNotice = new ArrayList<FestUfoNotice>();
		
		for(FestUfoNotice ele : noticeList){
			if(ele.getContent().contains("#FAQ")){
				faqNotice.add(ele);
				continue;
			}else if(ele.getContent().contains("#언론보도")){
				mediaNotice.add(ele);
				continue;
			}else if(ele.getContent().contains("#뉴스레터")){
				newsLetterNotice.add(ele);
				continue;
			}else{
				danoNotice.add(ele);
				continue;
			}
		}
		
		
		model.addAttribute("noticeList", noticeList);
		model.addAttribute("faqNotice", faqNotice);
		model.addAttribute("mediaNotice", mediaNotice);
		model.addAttribute("newsLetterNotice", newsLetterNotice);
		model.addAttribute("danoNotice", danoNotice);
		model.addAttribute("ufo", ufo);
		return "ufo/blog";
	}
	@RequestMapping(value = "ufo/{para}/blog-single", method = RequestMethod.GET)
	public String blog_single(Model model, @RequestParam("num") Integer num, @PathVariable("para")String para, HttpSession session){
		
		FestUfo ufo = dao.SelectUfoByPara(para);
		session.setAttribute("eventMenu", ufo.getMenu());
		session.setAttribute("eventPara", para);
		
		FestUfoNotice notice = dao.SelectOneUfoNotice(num);
		
		model.addAttribute("notice", notice);
		model.addAttribute("ufo", ufo);
		
		return "ufo/blog-single";
	}
	@RequestMapping(value = "ufo/career", method = RequestMethod.GET)
	public String career(){
		return "ufo/career";
	}
	@RequestMapping(value = "ufo/contact", method = RequestMethod.GET)
	public String contact(){
		return "ufo/contact";
	}
	@RequestMapping(value = "ufo/{para}/features", method = RequestMethod.GET)
	public String features(Model model, @PathVariable("para")String para, HttpSession session){
		session.setAttribute("eventPara", para);
		FestUfo ufo = dao.SelectUfoByPara(para);
		session.setAttribute("eventMenu", ufo.getMenu());
		
		//ufo를 notice list로 바꿔 보자!
		FestUfoNotice info = new FestUfoNotice();
		FestUfoNotice hist = new FestUfoNotice();
		FestUfoNotice prog = new FestUfoNotice();
		FestUfoNotice loca = new FestUfoNotice();
		
		
		info.setVoType("info");
		info.setTitle(ufo.getInfo_title());
		info.setContent(ufo.getInfo_info_text());
		info.setPhoto_file(ufo.getInfo_info_pic());
		
		
		hist.setVoType("hist");
		hist.setTitle(ufo.getHistory_title());
		hist.setContent(ufo.getInfo_hist_text());
		hist.setPhoto_file(ufo.getInfo_hist_pic());
		
		
		prog.setVoType("prog");
		prog.setTitle(ufo.getProgram_title());
		prog.setContent(ufo.getInfo_program_text());
		prog.setPhoto_file(ufo.getInfo_program_pic());
		
		loca.setVoType("loca");
		loca.setTitle(ufo.getLocation_title());
		loca.setContent(ufo.getInfo_location_text());
		loca.setPhoto_file(ufo.getInfo_location_pic());
		
	
		model.addAttribute("info", info);
		model.addAttribute("hist", hist);
		model.addAttribute("prog", prog);
		model.addAttribute("loca", loca);
		model.addAttribute("ufo", ufo);
		return "ufo/features";
	}
	@RequestMapping(value = "ufo/{para}/index", method = RequestMethod.GET)
	public String index(Model model, @PathVariable("para")String para, HttpSession session){
		session.setAttribute("eventPara", para);
		FestUfo ufo = dao.SelectUfoByPara(para);
		session.setAttribute("eventMenu", ufo.getMenu());
		List<UfoGoVO> ufoGo = dao.selectUfoGoByPara(para);
		List<UfoGoVO> ufoqr = dao.selectUfoQrByPara(para);
		
		
		if(ufo.getMenu().contains("stories")){
			List<FestQuesListVO> ql = getQuestionModel(para);
			model.addAttribute("quesVO", ql);
		}
		
		List<FestUfoNotice> noticeList = dao.SelectUfoNotice(para);
		model.addAttribute("noticeList", noticeList);
		
		model.addAttribute("ufoqr", ufoqr);
		model.addAttribute("ufo", ufo);
		model.addAttribute("ufoGo", ufoGo);
		return "ufo/index";
	}
	
	@RequestMapping(value = "ufo/{para}/stamp", method = RequestMethod.GET)
	public String stamp(Model model, @PathVariable("para")String para, HttpSession session){
		session.setAttribute("eventPara", para);
		FestUfo ufo = dao.SelectUfoByPara(para);
		session.setAttribute("eventMenu", ufo.getMenu());
		List<UfoGoVO> ufoGo = dao.selectUfoGoByPara(para);
		List<UfoGoVO> ufoqr = dao.selectUfoQrByPara(para);
		
		
		if(ufo.getMenu().contains("stories")){
			List<FestQuesListVO> ql = getQuestionModel(para);
			model.addAttribute("quesVO", ql);
		}
		
		List<FestUfoNotice> noticeList = dao.SelectUfoNotice(para);
		model.addAttribute("noticeList", noticeList);
		
		model.addAttribute("ufoqr", ufoqr);
		model.addAttribute("ufo", ufo);
		model.addAttribute("ufoGo", ufoGo);
		return "ufo/stamp";
	}
	
	public List<FestQuesListVO> getQuestionModel(String para){
		
		List<FestQuesListVO> ql= dao.selectUfoQuestionsNew(para);
		List<FestOption> ol = dao.selectUfoQuestionsOptionsNew(para);
		
		for(FestOption ele : ol){
			ql.get(ele.getQ_number()).getQuestionOptions().add(ele);
		}
		
//		그래프 만들기:속도를 위해서 제거
//		List<FestAnswerVO> answer = dao.selectUfoAnserByPara(para);
//		//퍼센트 계산해 todo
//		int length = answer.size();
//		int[][] points = new int[5][4];
		
//		for(FestAnswerVO ele : answer){
//			points[0][ele.getQ1_a()-1]++;
//			points[1][ele.getQ2_a()-1]++;
//			points[2][ele.getQ3_a()-1]++;
//			points[3][ele.getQ4_a()-1]++;
//			points[4][ele.getQ5_a()-1]++;
//		}
		

		
//		for(int i = 0; i < ql.size() - 2 ; i++){
//			for(int j = 0; j < 4; j++){
//				int point = points[i][j];
//				ql.get(i).getQuestionOptions().get(j).setPoint(point);
//				ql.get(i).getQuestionOptions().get(j).setPercent(point*100/length);
//			}
//		}
		
//		//SORTING!!
//		for(int i = 0; i < ql.size() - 2; i++){
//			Collections.sort(ql.get(i).getQuestionOptions(), new Comparator<FestOption>() {
//				@Override
//				public int compare(FestOption a, FestOption b){
//					return Integer.compare(b.getPoint(), a.getPoint());
//				}
//			});
//		}
		return ql;
	}
	
	@RequestMapping(value = "ufo/{para}/result/{type}/{uid}", method = RequestMethod.GET)
	public String getResult(Model model, @PathVariable("para")String para, HttpSession session, @PathVariable("uid")String uid, @PathVariable("type")String type){
		session.setAttribute("eventPara", para);
		FestUfo ufo = dao.SelectUfoByPara(para);
		session.setAttribute("eventMenu", ufo.getMenu());
		List<UfoGoVO> ufoResult = new ArrayList<UfoGoVO>();
		List<UfoGoRecord> userResult = new ArrayList<UfoGoRecord>();
		
		UfoGoRecord vo = new UfoGoRecord();
		vo.setPara(para);
		vo.setUfo_go_type(type);
		vo.setUser_uid(uid);

		userResult = dao.selectUfoGoRecordByParaAndUid(vo);
		int userSize = 0;
		String typeString = "";
		if(type.equals("go")){
			ufoResult = dao.selectUfoGoByPara(para);
			typeString = "스탬프랠리";
		}else if(type.equals("qr")){
			ufoResult = dao.selectUfoQrByPara(para);
			typeString = "큐알랠리";
		}
		
		for(UfoGoRecord ele: userResult){
			for(UfoGoVO ele2 : ufoResult){
				if(ele.getUfo_gid().equals(ele2.getUfo_gid())){
					ele2.setGo_image(ele.getUfo_image());
					ele2.setSubmit(true);
					userSize++;
				}
			}
		}
		
		String link = "https://www.ufo79.com/PIX/ufo/"+para+"/result/"+type+"/"+uid;
		String homepage = "https://www.ufo79.com/PIX/ufo/"+para+"/index";
		
		model.addAttribute("ufoResult", ufoResult);
		model.addAttribute("ufo", ufo);
		model.addAttribute("ufoSize", ufoResult.size());
		model.addAttribute("userSize", userSize);
		model.addAttribute("rallyType", typeString);
		model.addAttribute("shareLink", link);
		model.addAttribute("homepage", homepage);
		model.addAttribute("type", type);
		model.addAttribute("uid", uid);
		return "ufo/sns_result";
	}
	
	@RequestMapping(value = "ufo/{para}/result/{type}/{uid}/{gid}", method = RequestMethod.GET)
	public String getResultSolo(Model model, @PathVariable("para")String para, HttpSession session, @PathVariable("uid")String uid, @PathVariable("type")String type, @PathVariable("gid")String gid){
		session.setAttribute("eventPara", para);
		FestUfo ufo = dao.SelectUfoByPara(para);
		session.setAttribute("eventMenu", ufo.getMenu());
		List<UfoGoVO> ufoResult = new ArrayList<UfoGoVO>();
		List<UfoGoRecord> userResult = new ArrayList<UfoGoRecord>();
		
		UfoGoRecord vo = new UfoGoRecord();
		vo.setPara(para);
		vo.setUfo_go_type(type);
		vo.setUser_uid(uid);

		userResult = dao.selectUfoGoRecordByParaAndUid(vo);
		int userSize = 0;
		String typeString = "";
		if(type.equals("go")){
			ufoResult = dao.selectUfoGoByPara(para);
			typeString = "스탬프랠리";
		}else if(type.equals("qr")){
			ufoResult = dao.selectUfoQrByPara(para);
			typeString = "큐알랠리";
		}
		
		String go_image = "";
		for(UfoGoRecord ele: userResult){
			for(UfoGoVO ele2 : ufoResult){
				if(ele.getUfo_gid().equals(ele2.getUfo_gid())){
					ele2.setGo_image(ele.getUfo_image());
					ele2.setSubmit(true);
					userSize++;
				}
				if(ele.getUfo_gid().equals(gid)){
					go_image = ele.getUfo_image();
				}
			}
		}
		
		String link = "https://www.ufo79.com/PIX/ufo/"+para+"/result/"+type+"/"+uid+"/"+gid;
		String homepage = "https://www.ufo79.com/PIX/ufo/"+para+"/index";
		
		
		model.addAttribute("go_image", go_image);
		model.addAttribute("ufoResult", ufoResult);
		model.addAttribute("ufo", ufo);
		model.addAttribute("ufoSize", ufoResult.size());
		model.addAttribute("userSize", userSize);
		model.addAttribute("rallyType", typeString);
		model.addAttribute("shareLink", link);
		model.addAttribute("homepage", homepage);
		model.addAttribute("pick", gid);
		model.addAttribute("type", type);
		model.addAttribute("uid", uid);
		
		return "ufo/sns_result_single";
	}
	@RequestMapping(value = "ufo/job-single", method = RequestMethod.GET)
	public String job_single(){
		return "ufo/job-single";
	}
	@RequestMapping(value = "ufo/pricing", method = RequestMethod.GET)
	public String pricing(){
		return "ufo/pricing";
	}
	@RequestMapping(value = "ufo/{para}/stories", method = RequestMethod.GET)
	public String stories(Model model, @PathVariable("para")String para, HttpSession session){
		
		session.setAttribute("eventPara", para);
		FestUfo ufo = dao.SelectUfoByPara(para);
		session.setAttribute("eventMenu", ufo.getMenu());
		
		List<FestAnswerVO> answer = dao.selectUfoAnserByPara(para);
		//퍼센트 계산해 todo
		int length = answer.size();
		int[][] points = new int[5][4];
		
//		for(FestAnswerVO ele : answer){
//			points[0][ele.getQ1_a()-1]++;
//			points[1][ele.getQ2_a()-1]++;
//			points[2][ele.getQ3_a()-1]++;
//			points[3][ele.getQ4_a()-1]++;
//			points[4][ele.getQ5_a()-1]++;
//		}
		
		List<FestQuesListVO> ql= dao.selectUfoQuestionsNew(para);
		List<FestOption> ol = dao.selectUfoQuestionsOptionsNew(para);
		
		
		for(FestOption ele : ol){
			ql.get(ele.getQ_number()).getQuestionOptions().add(ele);
		}
		
		for(int i = 0; i < ql.size() - 2 ; i++){
			for(int j = 0; j < 4; j++){
				int point = points[i][j];
				ql.get(i).getQuestionOptions().get(j).setPoint(point);
				ql.get(i).getQuestionOptions().get(j).setPercent(point*100/length);
			}
		}
		
		//SORTING!!
		for(int i = 0; i < ql.size() - 2; i++){
			Collections.sort(ql.get(i).getQuestionOptions(), new Comparator<FestOption>() {
				@Override
				public int compare(FestOption a, FestOption b){
					return Integer.compare(b.getPoint(), a.getPoint());
				}
			});
		}
		
		model.addAttribute("quesVO", ql);
		model.addAttribute("ufo", ufo);
		return "ufo/stories";
	}
	@RequestMapping(value = "ufo/story-single", method = RequestMethod.GET)
	public String story_single(){
		return "ufo/story-single";
	}
	@RequestMapping(value = "ufo/support", method = RequestMethod.GET)
	public String support(){
		return "ufo/support";
	}
	@RequestMapping(value = "ufo/{para}/snsLog/fb", method = RequestMethod.POST)
	public @ResponseBody int inputFacebookLogin(@ModelAttribute("vo")FestSnsLog log, HttpServletRequest request){
		log.setSns_ip(request.getRemoteAddr());
		return dao.insertSnsLog(log);
	}
	
	@RequestMapping(value = "ufo/{para}/newsletter", method = RequestMethod.POST)
	public @ResponseBody int inputNewsLetterEmail(@ModelAttribute("vo")FestNewsLetterEmail vo, HttpServletRequest request){
		vo.setNews_letter_ip(request.getRemoteAddr());
		return dao.insertNewsLetterEmail(vo);
	}
	// 서베이 받기.
	@RequestMapping(value = "ufo/{para}/surveySubmit", method = {RequestMethod.GET, RequestMethod.POST})
	public @ResponseBody int surveySubmit(@ModelAttribute("vo")FestAnswerVO vo, HttpServletRequest request, @RequestParam("file") MultipartFile file
			, @PathVariable("para")String para, HttpSession session, Model model){
//		session.setAttribute("eventPara", para);
//		FestUfo ufo = dao.SelectUfoByPara(para);
//		session.setAttribute("eventMenu", ufo.getMenu());
		//FestAnswerVO vo = new FestAnswerVO();
		
		vo.setIp_log(request.getRemoteAddr());
		vo.setPara(para);
		
//		System.out.println(vo.getFirst_name_a());
		
		if (!file.isEmpty()) {
            try {
                String[] fileInfo = restService.writeFileToServer(file);
                
                vo.setQ7_a(fileInfo[0]);
                vo.setPic_lat(fileInfo[1]);
                vo.setPic_lon(fileInfo[2]);
                
                System.out.println("You successfully uploaded " + fileInfo[0] + " into " + fileInfo[0] + "-uploaded at ANSWER : "+para);
                
            } catch (Exception e) {
            	System.out.println("You failed to upload => " + e.getMessage() );
            }
        } else {
        	System.out.println("You failed to upload because the file was empty");
        	
        }
		
		//이름에 띄어쓰기가 있으면 %20으로 바꾼다.
		if(vo.getLast_name_a().contains(" ")){
			vo.setLast_name_a(vo.getLast_name_a().replaceAll("\\s+", "%20"));
			
		}
		if(vo.getFirst_name_a().contains(" ")){
			vo.setFirst_name_a(vo.getFirst_name_a().replaceAll("\\s+", "%20"));
		}
		

//		model.addAttribute("ufo", ufo);
		return dao.insertUfoAnswer(vo);
	}
	
	@RequestMapping(value = "ufo/{para}/surveySubmitLog", method = {RequestMethod.GET, RequestMethod.POST})
	public @ResponseBody int surveySubmit(@ModelAttribute("")FestAnswerVO vo, HttpServletRequest request, @PathVariable("para")String para, HttpSession session, Model model){
		vo.setIp_log(request.getRemoteAddr());
		vo.setPara(para);

		try{
		//이름에 띄어쓰기가 있으면 %20으로 바꾼다.
		if(vo.getLast_name_a().contains(" ")){
			vo.setLast_name_a(vo.getLast_name_a().replaceAll("\\s+", "%20"));
			
		}
		if(vo.getFirst_name_a().contains(" ")){
			vo.setFirst_name_a(vo.getFirst_name_a().replaceAll("\\s+", "%20"));
		}
		}catch(Exception e){
			e.getStackTrace();
		}
		return dao.insertUfoAnswer(vo);
	}
	@RequestMapping(value = "ufo/{para}/shareSubmit", method = {RequestMethod.GET, RequestMethod.POST})
	public @ResponseBody int shareSubmit(@ModelAttribute("")UfoShare vo, HttpServletRequest request, @PathVariable("para")String para){
		vo.setPara(para);
		return dao.insertUfoShare(vo);
	}
	
	@RequestMapping(value = "ufo/{para}/shareRand4", method = {RequestMethod.GET, RequestMethod.POST})
	public @ResponseBody List<UfoShare> shareRand4(@ModelAttribute("")UfoShare vo, HttpServletRequest request, @PathVariable("para")String para){
		vo.setPara(para);
		return dao.select4RandomShare_timeByVo(vo);
	}
	
	
	//To-do 파일 업로드 및 폼받아줘야 됨!
	@Bean(name = "multipartResolver")
	public CommonsMultipartResolver multipartResolver() {
	    CommonsMultipartResolver commonsMultipartResolver = new CommonsMultipartResolver(); 
	    // set any fields
	    return commonsMultipartResolver; 
	}
	
	@RequestMapping(value = "ufo/post/{para}/{partName}", method = {RequestMethod.GET, RequestMethod.POST})
	public String readPost(@PathVariable("partName")String partName, @PathVariable("para")String para, Model model, HttpSession session){
		session.setAttribute("eventPara", para);
		FestUfo ufo = dao.SelectUfoByPara(para);
		session.setAttribute("eventMenu", ufo.getMenu());
		
		String[] name = partName.split("_");
		FestAnswerVO vo = new FestAnswerVO();
		vo.setFirst_name_a(name[0]);
		vo.setLast_name_a(name[1]);
		
		System.err.println(name[0]);
		System.err.println(name[1]);
		
		model.addAttribute("vo", dao.selectSnsPost(vo));
		model.addAttribute("ufo", ufo);
		return "ufo/sns-post";
	}
	
	@RequestMapping(value = "ufo/{para}/catch/{type}/{gid}", method = RequestMethod.GET)
	public String catchGo(Model model, @PathVariable("para")String para, HttpSession session, @PathVariable("type")String type, @PathVariable("gid")String gid){
		session.setAttribute("eventPara", para);
		FestUfo ufo = dao.SelectUfoByPara(para);
		session.setAttribute("eventMenu", ufo.getMenu());
		List<UfoGoVO> ufoGo = dao.selectUfoGoByPara(para);
		List<UfoGoVO> ufoqr = dao.selectUfoQrByPara(para);
		
		if(ufo.getMenu().contains("stories")){
			List<FestQuesListVO> ql = getQuestionModel(para);
			model.addAttribute("quesVO", ql);
		}
		
		List<FestUfoNotice> noticeList = dao.SelectUfoNotice(para);
		model.addAttribute("noticeList", noticeList);
		
		model.addAttribute("ufoqr", ufoqr);
		model.addAttribute("ufo", ufo);
		model.addAttribute("ufoGo", ufoGo);
		model.addAttribute("type", type);
		model.addAttribute("gid", gid);
		
		return "ufo/index";
	}
	
	@RequestMapping(value = "ufo/{para}/reader", method = RequestMethod.GET)
	public String reader(Model model, @PathVariable("para")String para){
		model.addAttribute("para", para);
		return "ufo/reader";
	}

}
