package com.chainsys.sportsclub.model;

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
	@Column(name = "SPORTS_ID")
 private int sportsId;
	@Column(name = "SPORTS_NAME")
 private String sportsName;
 @Column(name = "FEES")
 private int fees;
 public int getSportsId() {
	return sportsId;
}
public void setSportsId(int sportsId) {
	this.sportsId = sportsId;
}
public String getSportsName() {
	return sportsName;
}
public void setSportsName(String sportsName) {
	this.sportsName = sportsName;
}
public int getFees() {
	return fees;
}
public void setFees(int fees) {
	this.fees = fees;
}
public LocalTime getInTime() {
	return inTime;
}
public void setInTime(LocalTime inTime) {
	this.inTime = inTime;
}
public LocalTime getOutTime() {
	return outTime;
}
public void setOutTime(LocalTime outTime) {
	this.outTime = outTime;
}
public int getDurations() {
	return durations;
}
public void setDurations(int durations) {
	this.durations = durations;
}
@Column(name = "IN_TIME")
 private LocalTime inTime;
 @Column(name = "OUT_TIME")
 private LocalTime outTime;
 @Column(name = "DURATIONS")
 private int durations;
 
 
}
