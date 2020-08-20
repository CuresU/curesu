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
	private String appoint_date,issue,mode,prescription,appoint_time,ispaid;
	
	
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
	
	
	
	@Column(name="appoint_date")	
	public String getAppoint_date() {
		return appoint_date;
	}
	public void setAppoint_date(String appoint_date) {
		this.appoint_date = appoint_date;
	}
	
	@Column
	public String getMode() {
		return mode;
	}
	public void setMode(String mode) {
		this.mode = mode;
	}
	
	@Column
	public String getPrescription() {
		return prescription;
	}
	public void setPrescription(String prescription) {
		this.prescription = prescription;
	}
	
	@Column
	public String getAppoint_time() {
		return appoint_time;
	}
	public void setAppoint_time(String appoint_time) {
		this.appoint_time = appoint_time;
	}
	
	
	@ManyToOne
	@JoinColumn(name="did")
	public Doctor getD() {
		return d;
	}
	public void setD(Doctor d) {
		this.d = d;
	}
	
	@ManyToOne
	@JoinColumn(name="uid")
	public user getU() {
		return u;
	}
	public void setU(user u) {
		this.u = u;
	}
	
}
