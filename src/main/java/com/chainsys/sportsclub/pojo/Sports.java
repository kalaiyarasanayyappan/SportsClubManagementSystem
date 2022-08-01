package com.chainsys.sportsclub.pojo;

import java.sql.Time;
import java.time.LocalTime;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
@Entity
@Table(name = "Sports")
public class Sports {
	@Id
 private int sports_id;
 private String sports_name;
 @Column(name = "fees")
 private int fees;
 private LocalTime in_time;
 private LocalTime out_time;
 private int durations;
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
public LocalTime getIn_time() {
	return in_time;
}
public void setIn_time(LocalTime in_time) {
	this.in_time = in_time;
}
public LocalTime getOut_time() {
	return out_time;
}
public void setOut_time(LocalTime out_time) {
	this.out_time = out_time;
}
public int getDurations() {
	return durations;
}
public void setDurations(int durations) {
	this.durations = durations;
}

 
 
}
