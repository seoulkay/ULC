package pix.gdc.com.vo;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

public class TisRequest {

	private int id;
	private String req_title;
	private String first_name;
	private String last_name;
	private String email;
	private int req_purpose;
	private String req_venue;
	private int req_contact;
	@DateTimeFormat(pattern = "yyyy-MM-dd'T'HH:mm")
	private Date arrive_stmp;
	private String arrive_flight;
	private String arrive_flight_name;
	@DateTimeFormat(pattern = "yyyy-MM-dd'T'HH:mm")
	private Date leave_stmp;
	private String leave_flight;
	private String leave_flight_name;
	private Date stmp;
	private Date mod_stmp;
	private String mod_by;
	private String req_status;
	
	//조인용
	private String event_name;
	private String local_contact;
	private String venue_name;
	private String local_contact_email;
	
	//로그용
	private int id_log;
	
	
	//폼용
	private String leave_stmp_str;
	private String arrive_stmp_str;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getReq_title() {
		return req_title;
	}
	public void setReq_title(String req_title) {
		this.req_title = req_title;
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
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public int getReq_purpose() {
		return req_purpose;
	}
	public void setReq_purpose(int req_purpose) {
		this.req_purpose = req_purpose;
	}
	public String getReq_venue() {
		return req_venue;
	}
	public void setReq_venue(String req_venue) {
		this.req_venue = req_venue;
	}
	public int getReq_contact() {
		return req_contact;
	}
	public void setReq_contact(int req_contact) {
		this.req_contact = req_contact;
	}
	public Date getArrive_stmp() {
		return arrive_stmp;
	}
	public void setArrive_stmp(Date arrive_stmp) {
		this.arrive_stmp = arrive_stmp;
	}
	public String getArrive_flight() {
		return arrive_flight;
	}
	public void setArrive_flight(String arrive_flight) {
		this.arrive_flight = arrive_flight;
	}
	public String getArrive_flight_name() {
		return arrive_flight_name;
	}
	public void setArrive_flight_name(String arrive_flight_name) {
		this.arrive_flight_name = arrive_flight_name;
	}
	public Date getLeave_stmp() {
		return leave_stmp;
	}
	public void setLeave_stmp(Date leave_stmp) {
		this.leave_stmp = leave_stmp;
	}
	public String getLeave_flight() {
		return leave_flight;
	}
	public void setLeave_flight(String leave_flight) {
		this.leave_flight = leave_flight;
	}
	public String getLeave_flight_name() {
		return leave_flight_name;
	}
	public void setLeave_flight_name(String leave_flight_name) {
		this.leave_flight_name = leave_flight_name;
	}
	public Date getStmp() {
		return stmp;
	}
	public void setStmp(Date stmp) {
		this.stmp = stmp;
	}
	public Date getMod_stmp() {
		return mod_stmp;
	}
	public void setMod_stmp(Date mod_stmp) {
		this.mod_stmp = mod_stmp;
	}
	public String getMod_by() {
		return mod_by;
	}
	public void setMod_by(String mod_by) {
		this.mod_by = mod_by;
	}
	public String getReq_status() {
		return req_status;
	}
	public void setReq_status(String req_status) {
		this.req_status = req_status;
	}
	public String getEvent_name() {
		return event_name;
	}
	public void setEvent_name(String event_name) {
		this.event_name = event_name;
	}
	public String getLocal_contact() {
		return local_contact;
	}
	public void setLocal_contact(String local_contact) {
		this.local_contact = local_contact;
	}
	public String getVenue_name() {
		return venue_name;
	}
	public void setVenue_name(String venue_name) {
		this.venue_name = venue_name;
	}
	public String getLocal_contact_email() {
		return local_contact_email;
	}
	public void setLocal_contact_email(String local_contact_email) {
		this.local_contact_email = local_contact_email;
	}
	public int getId_log() {
		return id_log;
	}
	public void setId_log(int id_log) {
		this.id_log = id_log;
	}
	public String getLeave_stmp_str() {
		return leave_stmp_str;
	}
	public void setLeave_stmp_str(String leave_stmp_str) {
		this.leave_stmp_str = leave_stmp_str;
	}
	public String getArrive_stmp_str() {
		return arrive_stmp_str;
	}
	public void setArrive_stmp_str(String arrive_stmp_str) {
		this.arrive_stmp_str = arrive_stmp_str;
	}
	
	
}
