package pix.gdc.com.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class QueController {
	@RequestMapping(value = "que/", method = RequestMethod.GET)
	public String queHome(){
		return "que/que";
	}
	
	@RequestMapping(value = "que/question", method = RequestMethod.GET)
	public String question(){
		return "que/question";
	}
}
