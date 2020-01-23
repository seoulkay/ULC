package pix.gdc.com.vo;

import java.util.Date;
import java.util.List;

import org.springframework.format.annotation.DateTimeFormat;

public class TisIti {
	private int id;
	private int trip_id;
	
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date stmp;
	private String desc;
	private String desc_local;
	private String iti_img;
	private String is_del;
	
	//조인 밸류들
	private String first_name;
	private String last_name;
	private String event_name;
	
	//디테일 벨류
	List<TisItiDetail> itiDetail;
	
	
	public int getTrip_id() {
		return trip_id;
	}
	public void setTrip_id(int trip_id) {
		this.trip_id = trip_id;
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
	public String getFirst_name() {
		return first_name;
	}
	public void setFirst_name(String first_name) {
		this.first_name = first_name;
	}
	public String getLast_name() {
		return last_name;
	}
	public void setLast_name(String last_name) {
		this.last_name = last_name;
	}
	public String getEvent_name() {
		return event_name;
	}
	public void setEvent_name(String event_name) {
		this.event_name = event_name;
	}
	public List<TisItiDetail> getItiDetail() {
		return itiDetail;
	}
	public void setItiDetail(List<TisItiDetail> itiDetail) {
		this.itiDetail = itiDetail;
	}
	public String getIti_img() {
		return iti_img;
	}
	public void setIti_img(String iti_img) {
		this.iti_img = iti_img;
	}
	public String getIs_del() {
		return is_del;
	}
	public void setIs_del(String is_del) {
		this.is_del = is_del;
	}
	
}
