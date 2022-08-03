package com.chainsys.sportsclub.model;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
@Entity
@Table(name = "Sponsering_Details")

public class SponseringDetails {
	@Id
	@Column(name = "SPONSERING_DETAILS_ID")
	private int sponseringDetailsId;
	
	@Column(name = "SPONSER_ID")
private int sponserId;
	@Column(name = "SPORTS_ID")
private int sportsId;
	public int getSponserId() {
		return sponserId;
	}
	public void setSponserId(int sponserId) {
		this.sponserId = sponserId;
	}
	public int getSportsId() {
		return sportsId;
	}
	public void setSportsId(int sportsId) {
		this.sportsId = sportsId;
	}
	public int getAmount() {
		return amount;
	}
	public void setAmount(int amount) {
		this.amount = amount;
	}
	public Date getDateOfSponsering() {
		return dateOfSponsering;
	}
	public void setDateOfSponsering(Date dateOfSponsering) {
		this.dateOfSponsering = dateOfSponsering;
	}
	public String getModeOfPayment() {
		return modeOfPayment;
	}
	public void setModeOfPayment(String modeOfPayment) {
		this.modeOfPayment = modeOfPayment;
	}
	public int getRecieptNumber() {
		return recieptNumber;
	}
	public void setRecieptNumber(int recieptNumber) {
		this.recieptNumber = recieptNumber;
	}
	public int getSponseringDetailsId() {
		return sponseringDetailsId;
	}
	public void setSponseringDetailsId(int sponseringDetailsId) {
		this.sponseringDetailsId = sponseringDetailsId;
	}
	@Column(name = "AMOUNT")
private int amount;
	@Column(name = "DATE_OF_SPONSERING")
private Date dateOfSponsering;
	@Column(name = "MODE_OF_PAYMENT")
private String modeOfPayment;
	@Column(name = "RECIEPT_NUMBER")
private int recieptNumber;


}
