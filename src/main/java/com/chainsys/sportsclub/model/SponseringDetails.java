package com.chainsys.sportsclub.model;
import java.sql.Date;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

@Entity
@Table(name = "Sponsering_Details")

public class SponseringDetails {
	@Id
	@SequenceGenerator(name="sponsering_details_id", sequenceName="sponsering_details_id", allocationSize=1)
    @GeneratedValue(strategy=GenerationType.AUTO, generator="sponsering_details_id")
	@Column(name = "SPONSERING_DETAILS_ID")
	private int sponseringDetailsId;
	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "SPONSER_ID", nullable = false, insertable = false, updatable = false)
	private Sponsers spons;
	
	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "SPORTS_ID", nullable = false, insertable = false, updatable = false)
	private Sports sport;
	public Sports getSport() {
		return sport;
	}

	public void setSport(Sports sport) {
		this.sport = sport;
	}

	@Column(name = "AMOUNT")
	private int amount;
	@Column(name = "DATE_OF_SPONSERING")
	private Date dateOfSponsering;
	@Column(name = "MODE_OF_PAYMENT")
	private String modeOfPayment;
	@SequenceGenerator(name="RECIEPT_NUMBER", sequenceName="RECIEPT_NUMBER", allocationSize=1000)
    @GeneratedValue(strategy=GenerationType.SEQUENCE, generator="RECIEPT_NUMBER")
	@Column(name = "RECIEPT_NUMBER")
	private int recieptNumber;
	@Column(name = "SPONSER_ID")
	private int sponserId;
	@Column(name = "SPORTS_ID")
	private int sportsId;

	public Sponsers getSpons() {
		return spons;
	}

	public void setSpons(Sponsers spons) {
		this.spons = spons;
	}

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
}
