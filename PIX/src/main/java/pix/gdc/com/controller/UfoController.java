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
import pix.gdc.com.vo.Event_VO;
import pix.gdc.com.vo.FestAnswerVO;
import pix.gdc.com.vo.FestNewsLetterEmail;
import pix.gdc.com.vo.FestOption;
import pix.gdc.com.vo.FestQuesListVO;
import pix.gdc.com.vo.FestSnsLog;
import pix.gdc.com.vo.FestUfo;
import pix.gdc.com.vo.FestUfoNotice;
import pix.gdc.com.vo.PixLike;

@Controller
public class UfoController {
	public String para = "dano";
	public int eventIdx = 1;
	
	@Autowired
	RestService restService;
	@Autowired
	FestDAO dao;
	
	@RequestMapping(value = "ufo/about", method = RequestMethod.GET)
	public String about(){
		return "ufo/about";
	}
	@RequestMapping(value = "ufo/blog", method = RequestMethod.GET)
	public String blog(Model model){
		List<FestUfoNotice> noticeList = dao.SelectUfoNotice(para);
		
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
		return "ufo/blog";
	}
	@RequestMapping(value = "ufo/blog-single", method = RequestMethod.GET)
	public String blog_single(Model model, @RequestParam("num") Integer num){
		FestUfoNotice notice = dao.SelectOneUfoNotice(num);
		
		model.addAttribute("notice", notice);
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
	@RequestMapping(value = "ufo/features", method = RequestMethod.GET)
	public String features(Model model){
		FestUfo ufo = dao.SelectUfoByNumber(eventIdx);
			
		//ufo를 notice list로 바꿔 보자!
		FestUfoNotice info = new FestUfoNotice();
		FestUfoNotice hist = new FestUfoNotice();
		FestUfoNotice prog = new FestUfoNotice();
	
		
		info.setVoType("info");
		info.setTitle("정보");
		info.setContent(ufo.getInfo_info_text());
		info.setPhoto_file(ufo.getInfo_info_pic());
		
		
		hist.setVoType("hist");
		hist.setTitle("역사");
		hist.setContent(ufo.getInfo_hist_text());
		hist.setPhoto_file(ufo.getInfo_hist_pic());
		
		
		prog.setVoType("prog");
		prog.setTitle("프로그램");
		prog.setContent(ufo.getInfo_program_text());
		prog.setPhoto_file(ufo.getInfo_program_pic());
		
	
		model.addAttribute("info", info);
		model.addAttribute("hist", hist);
		model.addAttribute("prog", prog);
		
		return "ufo/features";
	}
	@RequestMapping(value = "ufo/index", method = RequestMethod.GET)
	public String index(Model model){
		
		List<FestQuesListVO> ql= dao.selectUfoQuestionsNew(para);
		List<FestOption> ol = dao.selectUfoQuestionsOptionsNew(para);
		
		for(FestOption ele : ol){
			ql.get(ele.getQ_number()).getQuestionOptions().add(ele);
		}
			
		model.addAttribute("quesVO", ql);
		return "ufo/index";
	}
	@RequestMapping(value = "ufo/job-single", method = RequestMethod.GET)
	public String job_single(){
		return "ufo/job-single";
	}
	@RequestMapping(value = "ufo/pricing", method = RequestMethod.GET)
	public String pricing(){
		return "ufo/pricing";
	}
	@RequestMapping(value = "ufo/stories", method = RequestMethod.GET)
	public String stories(Model model){
		List<FestAnswerVO> answer = dao.selectUfoAnserByPara(para);
		//퍼센트 계산해 todo
		
		int length = answer.size();
		int[][] points = new int[5][4];
		
		for(FestAnswerVO ele : answer){
			points[0][ele.getQ1_a()-1]++;
			points[1][ele.getQ2_a()-1]++;
			points[2][ele.getQ3_a()-1]++;
			points[3][ele.getQ4_a()-1]++;
			points[4][ele.getQ5_a()-1]++;
		}
		
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
	@RequestMapping(value = "ufo/snsLog/fb", method = RequestMethod.POST)
	public @ResponseBody int inputFacebookLogin(@ModelAttribute("vo")FestSnsLog log, HttpServletRequest request){
		log.setSns_ip(request.getRemoteAddr());
		return dao.insertSnsLog(log);
	}
	
	@RequestMapping(value = "ufo/newsletter", method = RequestMethod.POST)
	public @ResponseBody int inputNewsLetterEmail(@ModelAttribute("vo")FestNewsLetterEmail vo, HttpServletRequest request){
		vo.setNews_letter_ip(request.getRemoteAddr());
		return dao.insertNewsLetterEmail(vo);
	}
	// 서베이 받기.
	@RequestMapping(value = "ufo/surveySubmit", method = RequestMethod.POST)
	public String surveySubmit(@ModelAttribute("vo")FestAnswerVO vo, HttpServletRequest request, @RequestParam("file") MultipartFile file){
		
		//FestAnswerVO vo = new FestAnswerVO();
		
		vo.setIp_log(request.getRemoteAddr());
		vo.setPara(para);
		
		System.out.println(vo.getFirst_name_a());
		
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
		
		dao.insertUfoAnswer(vo);
		
		return "redirect:index";
	}
	
	//To-do 파일 업로드 및 폼받아줘야 됨!
	@Bean(name = "multipartResolver")
	public CommonsMultipartResolver multipartResolver() {
	    CommonsMultipartResolver commonsMultipartResolver = new CommonsMultipartResolver(); 
	    // set any fields
	    return commonsMultipartResolver; 
	}
	
	@RequestMapping(value = "ufo/post/{para}", method = {RequestMethod.GET, RequestMethod.POST})
	public String readPost(@PathVariable("para")String para, Model model){
		String[] name = para.split("_");
		FestAnswerVO vo = new FestAnswerVO();
		vo.setFirst_name_a(name[0]);
		vo.setLast_name_a(name[1]);
		
		System.err.println(name[0]);
		System.err.println(name[1]);
		
		model.addAttribute("vo", dao.selectSnsPost(vo));
		return "ufo/sns-post";
	}

}
