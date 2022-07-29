package com.chainsys.sportsclub.pojo;

import java.sql.Date;

public class Prizes {
private Date date_of_prize;
private String title;
private int player_id;
private int sports_id;
private int position;
private String team_individual;
private String competetion_name;
private int prize_amount;
public Date getDate_of_prize() {
	return date_of_prize;
}
public void setDate_of_prize(Date date_of_prize) {
	this.date_of_prize = date_of_prize;
}
public String getTitle() {
	return title;
}
public void setTitle(String title) {
	this.title = title;
}
public int getPlayer_id() {
	return player_id;
}
public void setPlayer_id(int player_id) {
	this.player_id = player_id;
}
public int getSports_id() {
	return sports_id;
}
public void setSports_id(int sports_id) {
	this.sports_id = sports_id;
}
public int getPosition() {
	return position;
}
public void setPosition(int position) {
	this.position = position;
}
public String getTeam_individual() {
	return team_individual;
}
public void setTeam_individual(String team_individual) {
	this.team_individual = team_individual;
}
public String getCompetetion_name() {
	return competetion_name;
}
public void setCompetetion_name(String competetion_name) {
	this.competetion_name = competetion_name;
}
public int getPrize_amount() {
	return prize_amount;
}
public void setPrize_amount(int prize_amount) {
	this.prize_amount = prize_amount;
}


}
