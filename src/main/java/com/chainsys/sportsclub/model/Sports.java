package com.chainsys.sportsclub.model;

import java.time.LocalTime;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "Sports")
public class Sports {
	@Id
	@Column(name = "SPORTS_ID")
	private int sportsId;
	@Column(name = "SPORTS_NAME")
	private String sportsName;
	@Column(name = "FEES")
	private int fees;

	@Column(name = "IN_TIME")
	private String inTime;
	@Column(name = "OUT_TIME")
	private String outTime;
	@Column(name = "DURATIONS")
	private int durations;

	@OneToMany(mappedBy = "sport", fetch = FetchType.LAZY)
	private List<SponseringDetails> sponserdetails; // fk class

	public int getSportsId() {
		return sportsId;
	}

	public void setSportsId(int sportsId) {
		this.sportsId = sportsId;
	}

	public String getSportsName() {
		return sportsName;
	}

	public void setSportsName(String sportsName) {
		this.sportsName = sportsName;
	}

	public int getFees() {
		return fees;
	}

	public void setFees(int fees) {
		this.fees = fees;
	}

	public String getInTime() {
		return inTime;
	}

	public void setInTime(String inTime) {
		this.inTime = inTime;
	}

	public String getOutTime() {
		return outTime;
	}

	public void setOutTime(String outTime) {
		this.outTime = outTime;
	}

	public int getDurations() {
		return durations;
	}

	public void setDurations(int durations) {
		this.durations = durations;
	}

	public List<SponseringDetails> getSponserdetails() {
		return sponserdetails;
	}

	public void setSponserdetails(List<SponseringDetails> sponserdetails) {
		this.sponserdetails = sponserdetails;
	}

	

	
}
