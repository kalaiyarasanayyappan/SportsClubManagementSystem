package com.chainsys.sportsclub.model;

import java.sql.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
@Entity
@Table(name="adminlogin")
public class Adminlogin {
	
	@Column(name="admin_id")
	private int adminId;
	@Column(name="admin_name")
	private String adminName;
	@Id
	@Column(name="admin_email")
	private String adminEmail;
	@Column(name="admin_password")
	private String adminPassword;
	@Column(name="joining_date")
	private Date joiningDate;
	public int getAdminId() {
		return adminId;
	}
	public void setAdminId(int adminId) {
		this.adminId = adminId;
	}
	public String getAdminName() {
		return adminName;
	}
	public void setAdminName(String adminName) {
		this.adminName = adminName;
	}
	public String getAdminEmail() {
		return adminEmail;
	}
	public void setAdminEmail(String adminEmail) {
		this.adminEmail = adminEmail;
	}
	public String getAdminPassword() {
		return adminPassword;
	}
	public void setAdminPassword(String adminPassword) {
		this.adminPassword = adminPassword;
	}
	public Date getJoiningDate() {
		return joiningDate;
	}
	public void setJoiningDate(Date joiningDate) {
		this.joiningDate = joiningDate;
	}
	public String getAdminDesignation() {
		return adminDesignation;
	}
	public void setAdminDesignation(String adminDesignation) {
		this.adminDesignation = adminDesignation;
	}
	private String adminDesignation;
}
