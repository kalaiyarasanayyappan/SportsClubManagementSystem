package com.chainsys.sportsclub.pojo;

import java.sql.Date;

public class Staff {
private int staff_id;
private String staff_name;
private float salary;
private Date joining_date;
private Date date_of_birth;
private int contact;
private String address;
private String staff_role;
private String coaching_sports;
private int manager_id;
private String email;

public int getStaff_id() {
	return staff_id;
}
public void setStaff_id(int staff_id) {
	this.staff_id = staff_id;
}
public String getStaff_name() {
	return staff_name;
}
public void setStaff_name(String staff_name) {
	this.staff_name = staff_name;
}
public float getSalary() {
	return salary;
}
public void setSalary(float salary) {
	this.salary = salary;
}
public Date getJoining_date() {
	return joining_date;
}
public void setJoining_date(Date joining_date) {
	this.joining_date = joining_date;
}
public Date getDate_of_birth() {
	return date_of_birth;
}
public void setDate_of_birth(Date date_of_birth) {
	this.date_of_birth = date_of_birth;
}
public int getContact() {
	return contact;
}
public void setContact(int contact) {
	this.contact = contact;
}
public String getAddress() {
	return address;
}
public void setAddress(String address) {
	this.address = address;
}
public String getStaff_role() {
	return staff_role;
}
public void setStaff_role(String staff_role) {
	this.staff_role = staff_role;
}
public String getCoaching_sports() {
	return coaching_sports;
}
public void setCoaching_sports(String coaching_sports) {
	this.coaching_sports = coaching_sports;
}
public int getManager_id() {
	return manager_id;
}
public void setManager_id(int manager_id) {
	this.manager_id = manager_id;
}
public String getEmail() {
	return email;
}
public void setEmail(String email) {
	this.email = email;
}


}
