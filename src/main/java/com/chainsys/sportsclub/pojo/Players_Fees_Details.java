package com.chainsys.sportsclub.pojo;

import java.sql.Date;

public class Players_Fees_Details {
private Date paid_date;
private int player_id;
private int amount;
private String remarks;
private int reciept_number;
public Date getPaid_date() {
	return paid_date;
}
public void setPaid_date(Date paid_date) {
	this.paid_date = paid_date;
}
public int getPlayer_id() {
	return player_id;
}
public void setPlayer_id(int player_id) {
	this.player_id = player_id;
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
public int getReciept_number() {
	return reciept_number;
}
public void setReciept_number(int reciept_number) {
	this.reciept_number = reciept_number;
}


}
