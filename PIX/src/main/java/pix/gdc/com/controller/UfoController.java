package pix.gdc.com.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class UfoController {
	@RequestMapping(value = "ufo/about", method = RequestMethod.GET)
	public String about(){
		return "ufo/about";
	}
	@RequestMapping(value = "ufo/blog", method = RequestMethod.GET)
	public String blog(){
		return "ufo/blog";
	}
	@RequestMapping(value = "ufo/blog-single", method = RequestMethod.GET)
	public String blog_single(){
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
	public String features(){
		return "ufo/features";
	}
	@RequestMapping(value = "ufo/index", method = RequestMethod.GET)
	public String index(){
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

}
