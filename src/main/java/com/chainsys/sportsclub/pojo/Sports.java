package com.chainsys.sportsclub.pojo;

import java.sql.Time;

public class Sports {
 private int sports_id;
 private String sports_name;
 private int fees;
 private Time in_time;
 private Time out_time;
 private int duration;
 public int getSports_id() {
	return sports_id;
}
public void setSports_id(int sports_id) {
	this.sports_id = sports_id;
}
public String getSports_name() {
	return sports_name;
}
public void setSports_name(String sports_name) {
	this.sports_name = sports_name;
}
public int getFees() {
	return fees;
}
public void setFees(int fees) {
	this.fees = fees;
}
public Time getIn_time() {
	return in_time;
}
public void setIn_time(Time in_time) {
	this.in_time = in_time;
}
public Time getOut_time() {
	return out_time;
}
public void setOut_time(Time out_time) {
	this.out_time = out_time;
}
public int getDuration() {
	return duration;
}
public void setDuration(int duration) {
	this.duration = duration;
}

 
 
}
