package com.chainsys.sportsclub.pojo;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "Sponsers")
public class Sponsers {
	@Id
	@Column(name = "SPONSER_ID")
private int sponserId;
	@Column(name = "SPONSER_NAME")
private String sponserName;
	@Column(name = "CONTACT")
private long contact;
	public int getSponserId() {
		return sponserId;
	}
	public void setSponserId(int sponserId) {
		this.sponserId = sponserId;
	}
	public String getSponserName() {
		return sponserName;
	}
	public void setSponserName(String sponserName) {
		this.sponserName = sponserName;
	}
	public long getContact() {
		return contact;
	}
	public void setContact(long contact) {
		this.contact = contact;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	@Column(name = "EMAIL")
private String email;
}