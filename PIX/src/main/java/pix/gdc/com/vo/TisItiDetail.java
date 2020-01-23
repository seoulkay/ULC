package pix.gdc.com.vo;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

public class TisItiDetail {
	private int id;
	@DateTimeFormat(pattern = "yyyy-MM-dd'T'HH:mm")
	private Date stmp;
	private int trs_id;
	private int iti_id;
	private String desc;
	private String desc_local;
	private String note;
	private String note_local;
	
	//조인
	private String trs_title;
	private String trs_title_loc;
	private String trs_icon;
	
	public int getIti_id() {
		return iti_id;
	}
	public void setIti_id(int iti_id) {
		this.iti_id = iti_id;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public Date getStmp() {
		return stmp;
	}
	public void setStmp(Date stmp) {
		this.stmp = stmp;
	}
	public int getTrs_id() {
		return trs_id;
	}
	public void setTrs_id(int trs_id) {
		this.trs_id = trs_id;
	}
	public String getDesc() {
		return desc;
	}
	public void setDesc(String desc) {
		this.desc = desc;
	}
	public String getDesc_local() {
		return desc_local;
	}
	public void setDesc_local(String desc_local) {
		this.desc_local = desc_local;
	}
	public String getNote() {
		return note;
	}
	public void setNote(String note) {
		this.note = note;
	}
	public String getNote_local() {
		return note_local;
	}
	public void setNote_local(String note_local) {
		this.note_local = note_local;
	}
	public String getTrs_title() {
		return trs_title;
	}
	public void setTrs_title(String trs_title) {
		this.trs_title = trs_title;
	}
	public String getTrs_title_loc() {
		return trs_title_loc;
	}
	public void setTrs_title_loc(String trs_title_loc) {
		this.trs_title_loc = trs_title_loc;
	}
	public String getTrs_icon() {
		return trs_icon;
	}
	public void setTrs_icon(String trs_icon) {
		this.trs_icon = trs_icon;
	}
	
	
}
