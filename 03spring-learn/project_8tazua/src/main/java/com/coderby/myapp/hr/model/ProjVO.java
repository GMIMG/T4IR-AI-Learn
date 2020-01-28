package com.coderby.myapp.hr.model;

public class ProjVO {
	
	private int cId;
	private String customerType;
	private String name;
	private String phoneNumber;
	private String cigar;
	private String sPoint;
	private String ePoint;
	private String sTime;
	private String memo;
	
	
	
	public int getcId() {
		return cId;
	}



	public void setcId(int cId) {
		this.cId = cId;
	}



	public String getCustomerType() {
		return customerType;
	}



	public void setCustomerType(String customerType) {
		this.customerType = customerType;
	}



	public String getName() {
		return name;
	}



	public void setName(String name) {
		this.name = name;
	}



	public String getPhoneNumber() {
		return phoneNumber;
	}



	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}



	public String getCigar() {
		return cigar;
	}



	public void setCigar(String cigar) {
		this.cigar = cigar;
	}



	public String getsPoint() {
		return sPoint;
	}



	public void setsPoint(String sPoint) {
		this.sPoint = sPoint;
	}



	public String getePoint() {
		return ePoint;
	}



	public void setePoint(String ePoint) {
		this.ePoint = ePoint;
	}



	public String getsTime() {
		return sTime;
	}



	public void setsTime(String sTime) {
		this.sTime = sTime;
	}



	public String getMemo() {
		return memo;
	}



	public void setMemo(String memo) {
		this.memo = memo;
	}



	@Override
	public String toString() {
		return "ProjVO [customerType=" + customerType + ", name=" + name + ", phoneNumber=" + phoneNumber + ", cigar="
				+ cigar + ", sPoint=" + sPoint + ", ePoint=" + ePoint + ", sTime=" + sTime + ", memo=" + memo + "]";
	}
	
}