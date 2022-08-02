package com.chainsys.sportsclub.model;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
@Entity
@Table(name = "Players_Fees_Details")
public class Players_Fees_Details {
	@Id
	@Column(name = "paid_date")
private Date paidDate;
	@Column(name = "player_id")
private int playerId;
	@Column(name = "amount")
private int amount;
	public Date getPaidDate() {
		return paidDate;
	}
	public void setPaidDate(Date paidDate) {
		this.paidDate = paidDate;
	}
	public int getPlayerId() {
		return playerId;
	}
	public void setPlayerId(int playerId) {
		this.playerId = playerId;
	}
	public int getAmount() {
		return amount;
	}
	public void setAmount(int amount) {
		this.amount = amount;
	}
	public String getRemarks() {
		return remarks;
	}
	public void setRemarks(String remarks) {
		this.remarks = remarks;
	}
	public int getRecieptNumber() {
		return recieptNumber;
	}
	public void setRecieptNumber(int recieptNumber) {
		this.recieptNumber = recieptNumber;
	}
	@Column(name = "remarks")
private String remarks;
	@Column(name = "reciept_number")
private int recieptNumber;

}
