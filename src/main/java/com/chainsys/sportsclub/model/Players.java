package com.chainsys.sportsclub.model;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
@Entity
@Table(name = "Players")
public class Players {
	@Id
	@Column(name = "PLAYER_ID")
private int playerId;
	@Column(name = "PLAYER_NAME")
private String playerName;
	@Column(name = "SPORTS_ID")
private int sportsId;
	@Column(name = "GENDER")
private String gender;
	@Column(name = "ADDRESS")
private String address;
	@Column(name = "CONTACT")
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
