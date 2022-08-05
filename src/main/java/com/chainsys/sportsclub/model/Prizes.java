package com.chainsys.sportsclub.model;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
@Entity
@Table(name = "Prizes")

public class Prizes {
	@Id
	@Column(name = "PRIZE_ID")
	private String prizeId;
	@ManyToOne(fetch=FetchType.LAZY)
	@JoinColumn(name="player_id",nullable =false,insertable =false,updatable =false)
	private Players play;
	public Players getPlay() {
		return play;
	}
	public void setPlay(Players play) {
		this.play = play;
	}
	@Column(name = "date_of_prize")
private Date dateOfPrize;
	@Column(name = "title")
	private String title;
		@Column(name = "player_id")
	private int playerId;
		@Column(name = "sports_id")
	private int sportsId;
		@Column(name = "position_number")
	private int positionNumber;
		@Column(name = "team_or_individual")
	private String teamOrIndividual;
		@Column(name = "competetion_name")
	private String competetionName;
		@Column(name = "prize_amount")
	private int prizeAmount;

	public Date getDateOfPrize() {
		return dateOfPrize;
	}
	public void setDateOfPrize(Date dateOfPrize) {
		this.dateOfPrize = dateOfPrize;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public int getPlayerId() {
		return playerId;
	}
	public void setPlayerId(int playerId) {
		this.playerId = playerId;
	}
	public int getSportsId() {
		return sportsId;
	}
	public void setSportsId(int sportsId) {
		this.sportsId = sportsId;
	}
	public int getPositionNumber() {
		return positionNumber;
	}
	public void setPositionNumber(int positionNumber) {
		this.positionNumber = positionNumber;
	}
	public String getTeamOrIndividual() {
		return teamOrIndividual;
	}
	public void setTeamOrIndividual(String teamOrIndividual) {
		this.teamOrIndividual = teamOrIndividual;
	}
	public String getCompetetionName() {
		return competetionName;
	}
	public void setCompetetionName(String competetionName) {
		this.competetionName = competetionName;
	}
	public int getPrizeAmount() {
		return prizeAmount;
	}
	public void setPrizeAmount(int prizeAmount) {
		this.prizeAmount = prizeAmount;
	}
	public String getPrizeId() {
		return prizeId;
	}
	public void setPrizeId(String prizeId) {
		this.prizeId = prizeId;
	}
	
}
