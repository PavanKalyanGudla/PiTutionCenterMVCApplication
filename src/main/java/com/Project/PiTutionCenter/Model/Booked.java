package com.Project.PiTutionCenter.Model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="bookcourse")
public class Booked {
	@Id
	@Column(name="sid")
	private String sid;
	@Column(name="sname")
	private String sname;
	@Column(name="email")
	private String email;
	@Column(name="teacherid")
	private String teacherid;
	@Column(name="teachername")
	private String teachername;
	@Column(name="date")
	private String date;
	@Column(name="slot")
	private String slot;
	@Column(name="course")
	private String course;
	@Column(name="payment")
	private String payment;
	public String getSid() {
		return sid;
	}
	public void setSid(String sid) {
		this.sid = sid;
	}
	public String getSname() {
		return sname;
	}
	public void setSname(String sname) {
		this.sname = sname;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getTeacherid() {
		return teacherid;
	}
	public void setTeacherid(String teacherid) {
		this.teacherid = teacherid;
	}
	public String getTeachername() {
		return teachername;
	}
	public void setTeachername(String teachername) {
		this.teachername = teachername;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public String getSlot() {
		return slot;
	}
	public void setSlot(String slot) {
		this.slot = slot;
	}
	public String getCourse() {
		return course;
	}
	public void setCourse(String course) {
		this.course = course;
	}
	public String getPayment() {
		return payment;
	}
	public void setPayment(String payment) {
		this.payment = payment;
	}
	@Override
	public String toString() {
		return "Booked [sid=" + sid + ", sname=" + sname + ", email=" + email + ", teacherid=" + teacherid
				+ ", teachername=" + teachername + ", date=" + date + ", slot=" + slot + ", course=" + course
				+ ", payment=" + payment + "]";
	}
	
	
}
