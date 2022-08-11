package com.chainsys.sportsclub.model;


import java.sql.Date;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;
import javax.validation.constraints.Digits;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

@Entity
@Table(name = "Players")
public class Players {
	@Id
	@SequenceGenerator(name="players_id", sequenceName="players_id", allocationSize=1)
    @GeneratedValue(strategy=GenerationType.SEQUENCE, generator="players_id")
	@Column(name = "PLAYER_ID")
	/*
	 * @NotEmpty(message = "*Please enter value")
	 * 
	 * @Min(value = 0,message="*value should be greater than 0")
	 */
	private int playerId;
	@OneToMany(mappedBy = "player", fetch = FetchType.LAZY)
	private List<PlayersFeesDetails> FeesDetails; // fk class
	@OneToMany(mappedBy = "play", fetch = FetchType.LAZY)
	private List<Prizes> prizedetails; // fk class
	@ManyToOne(fetch=FetchType.LAZY)
	@JoinColumn(name="SPORTS_ID",nullable =false,insertable =false,updatable =false)
	private Sports sport;
	public Sports getSport() {
		return sport;
	}

	public void setSport(Sports sport) {
		this.sport = sport;
	}

	public List<Prizes> getPrizedetails() {
		return prizedetails;
	}

	public void setPrizedetails(List<Prizes> prizedetails) {
		this.prizedetails = prizedetails;
	}

	@Column(name = "PLAYER_NAME")
	@Size(max = 20, min = 3, message = "*Name length should be 3 to 20")
	@NotBlank(message = "*Name can't be Empty")
	@Pattern(regexp = "^[A-Za-z]\\w{3,20}$", message = "*Enter valid name ")
	private String playerName;

	public List<PlayersFeesDetails> getFeesDetails() {
		return FeesDetails;
	}

	public void setFeesDetails(List<PlayersFeesDetails> feesDetails) {
		FeesDetails = feesDetails;
	}

	@Column(name = "SPORTS_ID")
	/*
	 * @NotEmpty(message = "*Please enter value")
	 * 
	 * @Min(value = 0,message="*value should be greater than 0")
	 */
	private int sportsId;
	@Column(name = "GENDER") 
	@Pattern(regexp = "^M(ale)?$|^F(emale)?$", message = "*Enter valid gender ")
	private String gender;
	@Column(name = "ADDRESS")
	@NotEmpty(message = "*Please enter Address")
	private String address;
	@Column(name = "CONTACT")
	@Digits(message = "*Invalid number.", integer = 10, fraction = 0)
	private long contact;
	@Column(name = "PLAYER_STATUS")
	private String playerStatus;
	@Column(name = "DATE_OF_BIRTH")
	private Date dateOfBirth;
	@Column(name = "JOINING_DATE")
	private Date joiningDate;
	@Column(name = "SUBSCRIPTION_DUE")
	private int subscriptionDue;
	@Column(name = "SUBSCRIPTION_PAID")
	@Min(value = 0, message="*Value should be in positive numbers")
	private int subscriptionPaid;

	public int getPlayerId() {
		return playerId;
	}

	public void setPlayerId(int playerId) {
		this.playerId = playerId;
	}

	public String getPlayerName() {
		return playerName;
	}

	public void setPlayerName(String playerName) {
		this.playerName = playerName;
	}

	public int getSportsId() {
		return sportsId;
	}

	public void setSportsId(int sportsId) {
		this.sportsId = sportsId;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public long getContact() {
		return contact;
	}

	public void setContact(long contact) {
		this.contact = contact;
	}

	public String getPlayerStatus() {
		return playerStatus;
	}

	public void setPlayerStatus(String playerStatus) {
		this.playerStatus = playerStatus;
	}

	public Date getDateOfBirth() {
		return dateOfBirth;
	}

	public void setDateOfBirth(Date dateOfBirth) {
		this.dateOfBirth = dateOfBirth;
	}

	public Date getJoiningDate() {
		return joiningDate;
	}

	public void setJoiningDate(Date joiningDate) {
		this.joiningDate = joiningDate;
	}

	public int getSubscriptionDue() {
		return subscriptionDue;
	}

	public void setSubscriptionDue(int subscriptionDue) {
		this.subscriptionDue = subscriptionDue;
	}

	public int getSubscriptionPaid() {
		return subscriptionPaid;
	}

	public void setSubscriptionPaid(int subscriptionPaid) {
		this.subscriptionPaid = subscriptionPaid;
	}

}
