package pix.gdc.com.vo;

import java.util.Date;
import java.util.List;

public class FestQuesListVO {
	private String question;
	private List<FestOption> questionOptions;
	
	int idx;
	int event_idx;
	String fest_title;
	String fest_question;
	Date fest_created_on;
	
	public String getQuestion() {
		return question;
	}
	public void setQuestion(String question) {
		this.question = question;
	}
	public List<FestOption> getQuestionOptions() {
		return questionOptions;
	}
	public void setQuestionOptions(List<FestOption> questionOptions) {
		this.questionOptions = questionOptions;
	}
	public int getIdx() {
		return idx;
	}
	public void setIdx(int idx) {
		this.idx = idx;
	}
	public int getEvent_idx() {
		return event_idx;
	}
	public void setEvent_idx(int event_idx) {
		this.event_idx = event_idx;
	}
	public String getFest_title() {
		return fest_title;
	}
	public void setFest_title(String fest_title) {
		this.fest_title = fest_title;
	}
	public String getFest_question() {
		return fest_question;
	}
	public void setFest_question(String fest_question) {
		this.fest_question = fest_question;
	}
	public Date getFest_created_on() {
		return fest_created_on;
	}
	public void setFest_created_on(Date fest_created_on) {
		this.fest_created_on = fest_created_on;
	}
	
}
