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
import javax.validation.constraints.Max;
import javax.validation.constraints.Min;
@Entity
@Table(name = "Prizes")

public class Prizes {
	@Id
	@SequenceGenerator(name="prize_id", sequenceName="prize_id", allocationSize=1)
    @GeneratedValue(strategy=GenerationType.SEQUENCE, generator="prize_id")
	@Column(name = "PRIZE_ID")
	private int prizeId;
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
	private String positionNumber;
		@Column(name = "team_or_individual")
	private String teamOrIndividual;
		@Column(name = "competetion_name")
	private String competetionName;
		@Column(name = "prize_amount")
		/*
		 * @Min(value = 0 , message="*Price is not valid")
		 * 
		 * @Max(value = 5000000, message="*Price is not valid")
		 */
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
	public String getPositionNumber() {
		return positionNumber;
	}
	public void setPositionNumber(String positionNumber) {
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
	public int getPrizeId() {
		return prizeId;
	}
	public void setPrizeId(int prizeId) {
		this.prizeId = prizeId;
	}
	
}
