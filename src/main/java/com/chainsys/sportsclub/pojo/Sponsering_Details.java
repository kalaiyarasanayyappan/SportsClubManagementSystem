package com.chainsys.sportsclub.pojo;

import java.sql.Date;

public class Sponsering_Details {
private int sponser_id;
private int sports_id;
private int amount;
private Date date_of_sponsering;
private String mode_of_payment;
private int reciept_number;
public int getSponser_id() {
	return sponser_id;
}
public void setSponser_id(int sponser_id) {
	this.sponser_id = sponser_id;
}
public int getSports_id() {
	return sports_id;
}
public void setSports_id(int sports_id) {
	this.sports_id = sports_id;
}
public int getAmount() {
	return amount;
}
public void setAmount(int amount) {
	this.amount = amount;
}
public Date getDate_of_sponsering() {
	return date_of_sponsering;
}
public void setDate_of_sponsering(Date date_of_sponsering) {
	this.date_of_sponsering = date_of_sponsering;
}
public String getMode_of_payment() {
	return mode_of_payment;
}
public void setMode_of_payment(String mode_of_payment) {
	this.mode_of_payment = mode_of_payment;
}
public int getReciept_number() {
	return reciept_number;
}
public void setReciept_number(int reciept_number) {
	this.reciept_number = reciept_number;
}


}
