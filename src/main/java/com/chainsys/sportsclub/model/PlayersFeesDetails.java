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
@Table(name = "PlayersFeesDetails")
public class PlayersFeesDetails {
	
	@Column(name = "paid_date")
    private Date paidDate;
	@Column(name = "player_id")
    private int playerId;
	@Column(name = "amount")
    private int amount;
	@ManyToOne(fetch=FetchType.LAZY)
	@JoinColumn(name="player_id",nullable =false,insertable =false,updatable =false)
	private Players player;
	@Column(name = "remarks")
	private String remarks;
	public Players getPlayer() {
		return player;
	}
	public void setPlayer(Players player) {
		this.player = player;
	}
	@Id
	@SequenceGenerator(name="recieptnumber", sequenceName="recieptnumber", allocationSize=1)
    @GeneratedValue(strategy=GenerationType.SEQUENCE, generator="recieptnumber")
	@Column(name = "reciept_number")
	private int recieptNumber;
	
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
}
