package pix.gdc.com.vo;

import java.util.Date;

public class KimgProductVO extends KimgPhotoVO{
	private int nPrdCnt;
	private String cPrdCode;
	private String cPrdName;
	private String cPrdLocalName;
	private String cPrdCat;
	private String cPrdDesc;
	private Date dPrdCrt;
	private String cPrdCrtUsr;
	private Date dPrdMod;
	private String cPrdModUsr;
	private int nPrdDel;
	private double nPrdPriceOcog;
	private double nPrdPriceCont;
	private double nPrdLaborOcog;
	private double nPrdLaborCont;
	
	private String cPrdScale;
	
		
	
	public String getcPrdScale() {
		return cPrdScale;
	}
	public void setcPrdScale(String cPrdScale) {
		this.cPrdScale = cPrdScale;
	}
	public void setnPrdLaborCont(int nPrdLaborCont) {
		this.nPrdLaborCont = nPrdLaborCont;
	}
	public int getnPrdCnt() {
		return nPrdCnt;
	}
	public void setnPrdCnt(int nPrdCnt) {
		this.nPrdCnt = nPrdCnt;
	}
	public String getcPrdCode() {
		return cPrdCode;
	}
	public void setcPrdCode(String cPrdCode) {
		this.cPrdCode = cPrdCode;
	}
	public String getcPrdName() {
		return cPrdName;
	}
	public void setcPrdName(String cPrdName) {
		this.cPrdName = cPrdName;
	}
	public String getcPrdLocalName() {
		return cPrdLocalName;
	}
	public void setcPrdLocalName(String cPrdLocalName) {
		this.cPrdLocalName = cPrdLocalName;
	}
	public String getcPrdCat() {
		return cPrdCat;
	}
	public void setcPrdCat(String cPrdCat) {
		this.cPrdCat = cPrdCat;
	}
	public String getcPrdDesc() {
		return cPrdDesc;
	}
	public void setcPrdDesc(String cPrdDesc) {
		this.cPrdDesc = cPrdDesc;
	}
	public Date getdPrdCrt() {
		return dPrdCrt;
	}
	public void setdPrdCrt(Date dPrdCrt) {
		this.dPrdCrt = dPrdCrt;
	}
	public String getcPrdCrtUsr() {
		return cPrdCrtUsr;
	}
	public void setcPrdCrtUsr(String cPrdCrtUsr) {
		this.cPrdCrtUsr = cPrdCrtUsr;
	}
	public Date getdPrdMod() {
		return dPrdMod;
	}
	public void setdPrdMod(Date dPrdMod) {
		this.dPrdMod = dPrdMod;
	}
	public String getcPrdModUsr() {
		return cPrdModUsr;
	}
	public void setcPrdModUsr(String cPrdModUsr) {
		this.cPrdModUsr = cPrdModUsr;
	}
	public int getnPrdDel() {
		return nPrdDel;
	}
	public void setnPrdDel(int nPrdDel) {
		this.nPrdDel = nPrdDel;
	}
	public double getnPrdPriceOcog() {
		return nPrdPriceOcog;
	}
	public void setnPrdPriceOcog(double nPrdPriceOcog) {
		this.nPrdPriceOcog = nPrdPriceOcog;
	}
	public double getnPrdPriceCont() {
		return nPrdPriceCont;
	}
	public void setnPrdPriceCont(double nPrdPriceCont) {
		this.nPrdPriceCont = nPrdPriceCont;
	}
	public double getnPrdLaborOcog() {
		return nPrdLaborOcog;
	}
	public void setnPrdLaborOcog(double nPrdLaborOcog) {
		this.nPrdLaborOcog = nPrdLaborOcog;
	}
	public double getnPrdLaborCont() {
		return nPrdLaborCont;
	}
	public void setnPrdLaborCont(double nPrdLaborCont) {
		this.nPrdLaborCont = nPrdLaborCont;
	}
	
	
	

}