package com.chainsys.sportsclub.pojo;

import java.sql.Date;

public class Players {
private int player_id;
private String player_name;
private int sports_id;
private String gender;
private String address;
private int contact;
private String player_status;
private Date date_of_birth;
private Date joining_date;
private int subscription_due;
private int subscription_paid;
public int getPlayer_id() {
	return player_id;
}
public void setPlayer_id(int player_id) {
	this.player_id = player_id;
}
public String getPlayer_name() {
	return player_name;
}
public void setPlayer_name(String player_name) {
	this.player_name = player_name;
}
public int getSports_id() {
	return sports_id;
}
public void setSports_id(int sports_id) {
	this.sports_id = sports_id;
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
public int getContact() {
	return contact;
}
public void setContact(int contact) {
	this.contact = contact;
}
public String getPlayer_status() {
	return player_status;
}
public void setPlayer_status(String player_status) {
	this.player_status = player_status;
}
public Date getDate_of_birth() {
	return date_of_birth;
}
public void setDate_of_birth(Date date_of_birth) {
	this.date_of_birth = date_of_birth;
}
public Date getJoining_date() {
	return joining_date;
}
public void setJoining_date(Date joining_date) {
	this.joining_date = joining_date;
}
public int getSubscription_due() {
	return subscription_due;
}
public void setSubscription_due(int subscription_due) {
	this.subscription_due = subscription_due;
}
public int getSubscription_paid() {
	return subscription_paid;
}
public void setSubscription_paid(int subscription_paid) {
	this.subscription_paid = subscription_paid;
}


}
