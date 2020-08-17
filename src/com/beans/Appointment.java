package com.beans;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import org.hibernate.annotations.GenericGenerator;

@Entity
@Table(name="Appointment")
public class Appointment {

	private int aapoint_id;
	private String am10to11am,am11to12pm,pm12to1pm,pm1to2pm,did,appoint_date,issue;
	
	
	private user u;
	private Doctor d;
	
	@Id
	@GenericGenerator(name="inc",strategy="increment")
	@GeneratedValue(generator="inc")
	public int getAapoint_id() {
		return aapoint_id;
	}
	public void setAapoint_id(int aapoint_id) {
		this.aapoint_id = aapoint_id;
	}
	//edited
	@Column(name="issue")
	public String getIssue() {
		return issue;
	}
	public void setIssue(String issue) {
		this.issue = issue;
	}
	//edited end
	
	@Column(name="am10to11am")
	public String getAm10to11am() {
		return am10to11am;
	}
	public void setAm10to11am(String am10to11am) {
		this.am10to11am = am10to11am;
	}
	
	@Column(name="am11to12pm")
	public String getAm11to12pm() {
		return am11to12pm;
	}
	public void setAm11to12pm(String am11to12pm) {
		this.am11to12pm = am11to12pm;
	}
	
	@Column(name="pm12to1pm")
	public String getPm12to1pm() {
		return pm12to1pm;
	}
	public void setPm12to1pm(String pm12to1pm) {
		this.pm12to1pm = pm12to1pm;
	}
	
	@Column(name="pm1to2pm")
	public String getPm1to2pm() {
		return pm1to2pm;
	}
	public void setPm1to2pm(String pm1to2pm) {
		this.pm1to2pm = pm1to2pm;
	}
	
	@Column(name="appoint_date")	
	public String getAppoint_date() {
		return appoint_date;
	}
	public void setAppoint_date(String appoint_date) {
		this.appoint_date = appoint_date;
	}
	
	@Column(name="did")
	public String getDid() {
		return did;
	}
	public void setDid(String did) {
		this.did = did;
	}
	
	@ManyToOne	
	@JoinColumn(name="uid")
	public user getU() {
		return u;
	}
	public void setU(user u) {
		this.u = u;
	}
	
	/*
	 * @ManyToOne
	 * 
	 * @JoinColumn(name="did") public Doctor getD() { return d; } public void
	 * setD(Doctor d) { this.d = d; }
	 */
	
}
