package pix.gdc.com.controller;

import java.util.ArrayList;
import java.util.List;

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

import pix.gdc.com.dao.FestDAO;
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
	public String stories(){
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
	

}
