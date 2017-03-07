package pix.gdc.com.vo;

import java.sql.Date;

public class UfoGoRecord {
	private int id;
	private String first_name;
	private String last_name;
	private Date ufo_date;
	private String ufo_image;
	private String para;
	private int ufo_go_num;
	private String user_uid;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
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
	public Date getUfo_date() {
		return ufo_date;
	}
	public void setUfo_date(Date ufo_date) {
		this.ufo_date = ufo_date;
	}
	public String getUfo_image() {
		return ufo_image;
	}
	public void setUfo_image(String ufo_image) {
		this.ufo_image = ufo_image;
	}
	public String getPara() {
		return para;
	}
	public void setPara(String para) {
		this.para = para;
	}
	public int getUfo_go_num() {
		return ufo_go_num;
	}
	public void setUfo_go_num(int ufo_go_num) {
		this.ufo_go_num = ufo_go_num;
	}
	public String getUser_uid() {
		return user_uid;
	}
	public void setUser_uid(String user_uid) {
		this.user_uid = user_uid;
	}
	
	
}
