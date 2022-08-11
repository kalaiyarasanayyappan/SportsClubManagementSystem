package com.chainsys.sportsclub.model;

import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

@Entity
@Table(name = "Sponsers")
public class Sponsers {
	@Id
	@SequenceGenerator(name="sponser_id", sequenceName="sponser_id", allocationSize=1)
    @GeneratedValue(strategy=GenerationType.SEQUENCE, generator="sponser_id")
	@Column(name = "SPONSER_ID")
private int sponserId;
	@OneToMany(mappedBy = "spons", fetch = FetchType.LAZY)
	private List<SponseringDetails> sponserDetails; // fk class
	public List<SponseringDetails> getSponserDetails() {
		return sponserDetails;
	}
	public void setSponserDetails(List<SponseringDetails> sponserDetails) {
		this.sponserDetails = sponserDetails;
	}
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